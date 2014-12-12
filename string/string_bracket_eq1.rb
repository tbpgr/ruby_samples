require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
str="0123456789"
str[0]='@'
str
str="0123456789"
str[2]='@'
str
str="0123456789"
str[-1]='@'
str
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
