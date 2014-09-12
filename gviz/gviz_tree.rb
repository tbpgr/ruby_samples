require 'familyable'
require 'gottani_core'
require "gviz"

text =<<-EOS
root
  child1
    child1_1
      child1_1_1
      child1_1_2
        child1_1_2_1
        child1_1_2_2
    child1_2
  child2
    child2_1
  child3
EOS

sp2 = Gottani::Space2.new
indent_text = sp2.space2_to_common(text)

indexed_indent_text = indent_text.reverse.map.with_index { |e, i|e.merge({id: i}) }
# indexed_indent_text はこんなデータが入っています
# [{:level=>1, :value=>"child3", :id=>0},
#  {:level=>2, :value=>"child2_1", :id=>1},
#  {:level=>1, :value=>"child2", :id=>2},
#  {:level=>2, :value=>"child1_2", :id=>3},
#  {:level=>4, :value=>"child1_1_2_2", :id=>4},
#  {:level=>4, :value=>"child1_1_2_1", :id=>5},
#  {:level=>3, :value=>"child1_1_2", :id=>6},
#  {:level=>3, :value=>"child1_1_1", :id=>7},
#  {:level=>2, :value=>"child1_1", :id=>8},
#  {:level=>1, :value=>"child1", :id=>9},
#  {:level=>0, :value=>"root", :id=>10}]

module Familyable
  class Person
    attr_accessor :value, :level
  end
end

i = 0
persons = indexed_indent_text.reduce([]) do |persons, person|
  parent = indexed_indent_text[(i + 1)..-1]
    .find { |e|e[:level] == person[:level] - 1 }
  parent_ids = parent.nil? ? [] : [parent[:id]]
  person = Familyable::Person.new(id: i, parent_ids: parent_ids).tap do |e|
    e.value = person[:value]
    e.level = person[:level]
  end
  persons << person
  i += 1
  persons
end

sorted_persons = persons.reverse
family = Familyable::Family.new(family: persons)
# family にはこんなデータが入っています。
#<Familyable::Family:0x00000600291778
# @family=
#  [#<Familyable::Person:0x00000600293d70
#    @id=0,
#    @level=1,
#    @parent_ids=[10],
#    @value="child3">,
#   #<Familyable::Person:0x00000600293aa0
#    @id=1,
#    @level=2,
#    @parent_ids=[2],
#    @value="child2_1">,
#   #<Familyable::Person:0x000006002937f8
#    @id=2,
#    @level=1,
#    @parent_ids=[10],
#    @value="child2">,
#   #<Familyable::Person:0x00000600293618
#    @id=3,
#    @level=2,
#    @parent_ids=[9],
#    @value="child1_2">,
#   #<Familyable::Person:0x00000600293208
#    @id=4,
#    @level=4,
#    @parent_ids=[6],
#    @value="child1_1_2_2">,
#   #<Familyable::Person:0x00000600292d08
#    @id=5,
#    @level=4,
#    @parent_ids=[6],
#    @value="child1_1_2_1">,
#   #<Familyable::Person:0x00000600292948
#    @id=6,
#    @level=3,
#    @parent_ids=[8],
#    @value="child1_1_2">,
#   #<Familyable::Person:0x000006002925b0
#    @id=7,
#    @level=3,
#    @parent_ids=[8],
#    @value="child1_1_1">,
#   #<Familyable::Person:0x00000600292240
#    @id=8,
#    @level=2,
#    @parent_ids=[9],
#    @value="child1_1">,
#   #<Familyable::Person:0x00000600291d90
#    @id=9,
#    @level=1,
#    @parent_ids=[10],
#    @value="child1">,
#   #<Familyable::Person:0x00000600291a48
#    @id=10,
#    @level=0,
#    @parent_ids=[],
#    @value="root">]>

Graph do
  global layout:'dot'
  # ノードの定義
  sorted_persons.each { |person|node :"person#{person.id}",  { label: person.value } }

  # エッジの定義
  sorted_persons.each do |person|
    parents =  family.get_parents(person)
    next if parents.empty?
    parent = parents.first
    edge :"person#{parent.id}_person#{person.id}"
  end

  # *** 根のランク, スタイル定義 ***
  min_id = persons.find { |e|e.level == 0 }.id
  min_person_key = :"person#{min_id}"
  rank :min, [min_person_key]
  node min_person_key, { width: 2, shape: 'doublecircle' }

  # *** 根以外のノードのランク定義 ***
  ranked_persons = sorted_persons.group_by { |e|e.level }.select { |key, value|key.nonzero? }
  ranked_persons.each do |rank, each_rank_persons|
    persons = each_rank_persons.map { |e|"person#{e.id}".to_sym }
    rank(:same, persons)
  end

  save :"givz_tree", :png
end
