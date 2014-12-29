require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
'hoge'.chr
'ほげ'.chr
' '.chr
''.chr
''[0]
'hoge'.chr == 'hoge'[0]
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
