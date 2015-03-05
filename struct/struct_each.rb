require 'tbpgr_utils'

Person = Struct.new(:name, :age)
tanaka = Person.new("tanaka", 23)
sato = Person.new("sato", 42)

bulk_puts_eval binding, <<-EOS
tanaka.each.to_a
sato.each.to_a
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
