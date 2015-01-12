require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
#coding:UTF-8
s = "いろは"
s.encode("EUC-JP")
s.encode(Encoding::EUCJP)
s.encode(Encoding::UTF_8)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
