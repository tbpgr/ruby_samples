require 'tbpgr_utils'

now = Time.now
bulk_puts_eval binding, <<-EOS
now.mon
now.month
now.mon == now.month
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
