require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
" 20".to_i
"+20".to_i
"-20".to_i
"10名".to_i
"約10".to_i
"0b10".to_i(2)
"010".to_i(8)
"0x10".to_i(16)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
