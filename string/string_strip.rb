require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
"  hoge".strip
"hoge  ".strip
"  hoge  ".strip
"\0hoge\0".strip
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
