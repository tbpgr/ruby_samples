require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
hoge = 'hogehigehage'
hoge.delete! 'h'
hoge
hoge = 'hogehigehage'
hoge.delete! 'a-g'
hoge
hoge = 'hogehigehage'
hoge.delete! '^a-g'
hoge
hoge = 'hogehigehage'
hoge.delete! 'a-g', 'e-h'
hoge
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
