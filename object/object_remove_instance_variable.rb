require 'tbpgr_utils'

class Person
  attr_reader :name, :age
  def initialize(name, age)
    @name, @age = name, age
  end
end
tanaka = Person.new('tanaka', 34)

bulk_puts_eval binding, <<-EOS
tanaka.instance_variables.grep /name/
tanaka.remove_instance_variable('@name')
tanaka.instance_variables.grep /name/
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
