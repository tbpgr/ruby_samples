require 'tbpgr_utils'

hoge = "hoge"
bulk_puts_eval binding, <<-EOS
hoge.hash
'hoge'.hash
'hoge'.eql? hoge
hoge.object_id
'hoge'.object_id
'hoge'.equal? hoge
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
