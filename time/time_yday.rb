require 'tbpgr_utils'

day_1_6 = Time.utc(2015, 1, 6)
day_5_21 = Time.utc(2015, 5, 21)
day_12_31 = Time.utc(2015, 12, 31)
bulk_puts_eval binding, <<-EOS
day_1_6.yday
day_5_21.yday
day_12_31.yday
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
