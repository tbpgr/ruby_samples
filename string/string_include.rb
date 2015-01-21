require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
"hoge".include?("og")
"hoge".include?("e")
"hoge".include?("a")
"hoge".include?("eo")
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
