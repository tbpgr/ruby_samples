require 'tbpgr_utils'

class Person
  attr_reader :name, :age
  attr_accessor :nationality

  def initialize(name , age, &block)
    @name, @age = name, age
    block[self] if block_given?
  end
end

tanaka = Person.new("tanaka", 24)
tanaka.nationality = "Japanese"
dhh = Person.new("dhh", 35) do |e|
  e.nationality = "Danish"
end

bulk_puts_eval binding, <<-EOS
tanaka
dhh
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
