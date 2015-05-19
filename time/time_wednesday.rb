require 'tbpgr_utils'

tuesday = Time.utc(2015, 1, 6)
wednesday = Time.utc(2015, 1, 7)
bulk_puts_eval binding, <<-EOS
wednesday.wday
wednesday.wednesday?
tuesday.wday
tuesday.wednesday?
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
