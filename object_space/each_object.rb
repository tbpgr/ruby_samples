require 'tbpgr_utils'

class Person
  attr_reader :name, :age
  def initialize(name, age)
    @name, @age = name, age
  end
end

tanaka = Person.new('tanaka', 23)
suzuki = Person.new('suzuki', 33)

bulk_puts_eval binding, <<-EOS
ObjectSpace.each_object
ObjectSpace.each_object {}
ObjectSpace.each_object(Person)
ObjectSpace.each_object(Person) {}
EOS
ObjectSpace.each_object(Person) { |e|p e.inspect }

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
