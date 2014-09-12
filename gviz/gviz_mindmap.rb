require 'familyable'
require 'gottani_core'
require "gviz"

text =<<-EOS
Ruby
  スクリプト言語
  影響
    From
      Perl
      Lisp
      Smalltalk
    To
      CoffeeScript
      Elixir
  Author
    まつもとゆきひろ
      Matz
      松江
      Heroku
  Web
    Ruby on Rails
      Author
        DHH
      Products
        Redmine
        GitLab
    Sinatra
  DevOps
    Vagrant
      Author
        M.Hashimoto
      Provider
        Virtual Box
        VMWare
          Workstation
          Fusion
        AWS
    Chef
    Puppet
  特徴
    楽しい
    すべてがオブジェクト
    可読性の高さ
    動的言語
      強力なメタプログラミング
      DSL作成の容易さ
EOS

sp2 = Gottani::Space2.new
indent_text = sp2.space2_to_common(text)

indexed_indent_text = indent_text.reverse.map.with_index { |e, i|e.merge({id: i}) }

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

Graph do
  global layout:'twopi', overlap:false, splines: :curved
  nodes fontname:'MS GOTHIC', shape: :none, style:'filled'
  edges dir: :none
  # ノードの定義
  sorted_persons.each { |person|node :"person#{person.id}",  { label: person.value } }

  # エッジの定義
  sorted_persons.each do |person|
    parents =  family.get_parents(person)
    next if parents.empty?
    parent = parents.first
    options  = {}
    options[:penwidth] = 6 if parent.level == 0
    edge :"person#{parent.id}_person#{person.id}", options

  end

  # *** 根のランク, スタイル定義 ***
  min_id = persons.find { |e|e.level == 0 }.id
  min_person_key = :"person#{min_id}"
  rank :min, [min_person_key]
  node min_person_key, { shape: 'pentagon', fontsize: 80, fillcolor: :red }

  # *** 根以外のノードのランク定義 ***
  ranked_persons = sorted_persons.group_by { |e|e.level }.select { |key, value|key.nonzero? }
  ranked_persons.each do |rank, each_rank_persons|
    each_rank_persons.map { |e|node :"person#{e.id}", { fontsize: 40 } } if rank == 1
    persons = each_rank_persons.map { |e|"person#{e.id}".to_sym }
    rank(:same, persons)
  end

  save :"givz_mindmap", :png
end
