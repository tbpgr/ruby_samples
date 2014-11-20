Person = Struct.new(:name, :age, :message) do
  def ===(other)
    name == other.name && age == other.age
  end

  def say
    message
  end
end

def tanaka?; Person.new('tanaka', 32); end
def obokata?; Person.new('obokata', 25); end
def nonomura?; Person.new('nonomura', 40); end
def samuragochi?;Person.new('samuragochi', 41) ; end

[
  Person.new('tanaka', 32, "田中です"),
  Person.new('suzuki', 35),
  Person.new('sato', 35),
  Person.new('samuragochi', 41, "きこえてます"),
  Person.new('obokata', 25, "STAP細胞はあります"),
  Person.new('nonomura', 40, "少子化問題、高齢ェェエエ者ッハアアアァアーー！！")
].each do |e|
  case e
  when tanaka? then puts "match tanaka #{e.say}"
  when obokata? then puts "match obokata #{e.say}"
  when nonomura? then puts "match nonomura #{e.say}"
  when samuragochi? then puts "match samuragochi #{e.say}"
  else puts "あんた誰？ #{e}"
  end
end
