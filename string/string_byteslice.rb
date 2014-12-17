require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
'hoge'.byteslice(0)
'hoge'.byteslice(1)
'hoge'.byteslice(-1)
'hoge'.byteslice(1, 2)
'hoge'.byteslice(-2, 2)
'hoge'.byteslice(1..3)
'ほげ'.byteslice(0)
'ほげ'.byteslice(0, 2)
'ほげ'.byteslice(0..1)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
