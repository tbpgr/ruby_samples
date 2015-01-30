require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
"hoge".match(/h.ge/)
"hige".match(/h.ge/)
"hage".match(/h.ge/)
"hege".match(/h.ge/)
"hogehigehage".match(/(h.ge)(h.ge)(h.ge)/)
"hoge".match(/h.ge/, 1)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
