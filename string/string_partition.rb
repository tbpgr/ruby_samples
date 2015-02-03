require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
'hoge'.partition('o')
'hoge'.split('o')
'hoge'.partition('z')
'hoge'.split('z')
'testhogehigehagetest'.partition('h')
'testhogehigehagetest'.split('h')
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
