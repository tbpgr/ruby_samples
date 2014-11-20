Person = Struct.new(:name, :age, :message) do
  def ===(other)
    return false unless other.is_a? Person
    name == other.name && age == other.age
  end

  def say
    message
  end
end

def obokata?; Person.new('obokata', 25); end
def one_to_ten?; (1..10); end
def string?; "string"; end
def regexp?; /h.ge/; end

[
  1, 10, 11,
  Person.new('tanaka', 32, "田中です"), Person.new('obokata', 25, "STAP細胞はあります"),
  "string", "not string",
  "hoge", "hige", "hage", "not hoge"
].each do |e|
  case e
  when one_to_ten? then puts "1 to 10 : #{e}"
  when obokata? then puts "match obokata : #{e.say}"
  when string? then puts "match string : #{e}"
  when regexp? then puts "match regexp : #{e}"
  else puts "no match : #{e}"
  end
end
