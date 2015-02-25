require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
"hoge".to_s
"hoge".to_str
"hoge".to_str == "hoge".to_s
"hoge".to_str == "hoge"
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
