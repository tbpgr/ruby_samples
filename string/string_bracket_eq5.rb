require 'tbpgr_utils'

str="tanaka 34 japanese"
str[/(?<name>.+) (?<age>\d{1,3}) (?<nationality>.+)/, :name]='名前潰し'
p str

str="tanaka 34 japanese"
str[/(?<name>.+) (?<age>\d{1,3}) (?<nationality>.+)/, :age]='年齢潰し'
p str

str="tanaka 34 japanese"
str[/(?<name>.+) (?<age>\d{1,3}) (?<nationality>.+)/, :nationality]='国籍潰し'
p str

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
