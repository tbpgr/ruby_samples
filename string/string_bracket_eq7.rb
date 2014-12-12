require 'tbpgr_utils'

str="0123456789"
str[0..1]='@'
p str

str="0123456789"
str[2..4]='@'
p str

str="0123456789"
str[-3..-1]='@'
p str


__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
