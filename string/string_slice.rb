require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
"hogehigehage".slice(0)
"hogehigehage"[0]
"hogehigehage".slice(-1)
"hogehigehage"[-1]
"hogehigehage".slice(5)
"hogehigehage"[-5]
"hogehigehage".slice(5, 3)
"hogehigehage"[5, 3]
"hogehigehage".slice('hige')
"hogehigehage"['hige']
"hogehigehage".slice(5..8)
"hogehigehage"[5..8]
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
