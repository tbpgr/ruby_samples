require 'tbpgr_utils'

Person = Struct.new(:name, :age)
tanaka1 = Person.new("tanaka", 32)
tanaka2 = Person.new("tanaka", 32)
suzuki = Person.new("suzuki", 34)

bulk_puts_eval binding, <<-EOS
tanaka1.hash
tanaka2.hash
tanaka1.hash == tanaka2.hash
suzuki.hash
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
