require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
hoge = 'hoge'
hoge.setbyte(1,65)
hoge
hoge = 'ほげ'
hoge.setbyte(0,65)
hoge.setbyte(1,66)
hoge.setbyte(2,67)
hoge
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
