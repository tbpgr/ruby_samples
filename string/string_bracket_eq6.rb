require 'tbpgr_utils'

str="hoge hige hage hoge"
str[/hige/]='@'
p str

str="hoge hige hage hoge"
str[/hage/]='@'
p str

str="hoge hige hage hoge"
str[/h.ge/]='@'
p str

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
