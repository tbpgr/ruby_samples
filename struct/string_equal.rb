require 'tbpgr_utils'

Person = Struct.new(:name, :age)
tanaka1 = Person.new('tanaka', 34)
tanaka2 = Person.new('tanaka', 34)

bulk_puts_eval binding, <<-EOS
tanaka1.eql?(tanaka2)
tanaka1.equal?(tanaka2)
tanaka1 == tanaka2
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
