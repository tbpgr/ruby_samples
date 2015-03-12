require 'tbpgr_utils'

Person = Struct.new(:name, :age)
tanaka = Person.new("tanaka", 34)
sato = Person.new("sato", 43)
Dog = Struct.new(:name, :age, :飼い主)
pochi = Dog.new("pochi", 43, tanaka)

bulk_puts_eval binding, <<-EOS
tanaka.length
sato.length
pochi.length
tanaka.length == tanaka.size
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
 
 