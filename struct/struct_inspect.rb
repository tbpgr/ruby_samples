require 'tbpgr_utils'

Person = Struct.new(:name, :age)
tanaka = Person.new("tanaka", 34)
sato = Person.new("sato", 43)

bulk_puts_eval binding, <<-EOS
tanaka.inspect
sato.inspect
sato
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
