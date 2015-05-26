require 'delegate'
foo = SimpleDelegator.new([])
foo.push(1)
foo.push(2)
print foo, "\n"
puts foo.class
puts foo.__setobj__({})
puts foo
puts foo.class

Person = Struct.new(:name, :age)

class People < SimpleDelegator
  def initialize(ary)
    super(ary)
  end

  def members
    map(&:name).join(',')
  end
end

people = People.new([Person.new('tanaka', 23), Person.new('suzuki', 43), Person.new('sato', 32)])
print people, "\n"
puts people.members
