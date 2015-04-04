require 'tbpgr_utils'

Person = Struct.new(:name, :age)
tanaka = Person.new('tanaka', 34)

bulk_puts_eval binding, <<-EOS
:hoge.length
:"ほげ".length
:"ほげ".size
:"ほげ".length == :"ほげ".size
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
