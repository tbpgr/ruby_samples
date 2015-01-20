require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
"f".hex
"10".hex
"11".hex
"fff".hex
"0x10".hex
"0X10".hex
"-0x10".hex
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
