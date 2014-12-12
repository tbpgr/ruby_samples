require 'tbpgr_utils'

str="0123456789"
str[/(\d)/, 0]='@'
puts str
str="0123456789"
str[/(\d)(\d)(\d)(\d)/, 4]='@'
puts str

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
