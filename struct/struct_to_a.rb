require 'tbpgr_utils'

Person = Struct.new(:name, :age)
Dog = Struct.new(:name, :age, :owner)
tanaka = Person.new("tanaka", 23)
pochi = Dog.new("pochi", 2, tanaka)
bulk_puts_eval binding, <<-EOS
tanaka.to_a
pochi.to_a
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
