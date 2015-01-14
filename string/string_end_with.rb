require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
"hoge".end_with?('ge')
"hige".end_with?('ge')
"higo".end_with?('ge')
"hoge".end_with?('a', 'ge')
"hoa".end_with?('a', 'ge')
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
