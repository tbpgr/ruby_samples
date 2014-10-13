Person = Struct.new(:name, :age)
tanaka = Person.new('tanaka', 34)

print tanaka.to_s, "\n"
print "#{tanaka}", "\n"

class << tanaka
  def to_s
    <<-EOS
name = #{name}
age = #{age}
    EOS
  end
end

print tanaka.to_s, "\n"
print "#{tanaka}", "\n"
