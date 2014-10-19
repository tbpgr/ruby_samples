require 'tbpgr_utils'

Person = Struct.new(:name, :age)
tanaka = Person.new('tanaka', 34)

hoge = "hoge"

bulk_puts_eval binding, <<-EOS
ObjectSpace._id2ref(hoge.__id__)
ObjectSpace._id2ref(tanaka.__id__)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
