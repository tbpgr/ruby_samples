require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
"22".to_f
"22e2".to_f
"2e-2".to_f
".2".to_f 
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
