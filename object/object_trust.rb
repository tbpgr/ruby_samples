require 'tbpgr_utils'

Person = Struct.new(:name, :age)
tanaka = Person.new('tanaka', 24)

bulk_puts_eval binding, <<-EOS
tanaka.name.untrusted?
tanaka.name.trust
tanaka.name.untrusted?
tanaka.name.untrust
tanaka.name.untrusted?
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
