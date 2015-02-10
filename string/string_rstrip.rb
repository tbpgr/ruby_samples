require 'tbpgr_utils'

p "  hoge\n".rstrip
p "  hoge\t\r\n\0".rstrip
p "  hoge   ".rstrip
p "hoge".rstrip
p "".rstrip

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
