require 'json'

class Person
  attr_reader :name, :age
  def initialize(name, age)
    @name, @age = name, age
  end
end

long = {
  key1: 'value1',
  key2: 'value2',
  key3: 'value3',
  key4: %w(hoge hige hage)
}

tanaka = Person.new('tanaka', 34)
sato = Person.new('sato', 32)

puts JSON.dump('hoge')
puts JSON.dump('{"first":1,"second":2,"third":3}')
puts JSON.dump([1,2,3])
puts JSON.dump([tanaka, sato])
puts JSON.dump(long)
puts JSON.generate(long)
puts JSON.fast_generate(long)
# puts JSON[[*1..5]]

json = JSON.generate(long)
print JSON.load(json), "\n"
print JSON.parse(json), "\n"
json = JSON.generate('{ "a":1, "b":2, "c":3 }')
