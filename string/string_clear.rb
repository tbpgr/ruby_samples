require 'tbpgr_utils'

hoge = 'hoge'
bulk_puts_eval binding, <<-EOS
hoge.clear
hoge
''.clear
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
