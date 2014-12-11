require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
"123456789"[0]
"123456789"[3]
"123456789"[-1]
"123456789"[-3]
"123456789"[0, 3]
"123456789"[3, 3]
"123456789"[-1, 3]
"123456789"[-3, 3]
"123456789"[10]
"-------------------------------"
"123456789".slice(0)
"123456789".slice(3)
"123456789".slice(-1)
"123456789".slice(-3)
"123456789".slice(0, 3)
"123456789".slice(3, 3)
"123456789".slice(-1, 3)
"123456789".slice(-3, 3)
"123456789".slice(10)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
