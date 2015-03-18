require 'tbpgr_utils'

Person = Struct.new(:name, :age)
tanaka = Person.new('tanaka', 23)
Dog = Struct.new(:name, :age, :owner)
pochi = Dog.new('pochi', 23, tanaka)

bulk_puts_eval binding, <<-EOS
tanaka.to_h
pochi.to_h
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
