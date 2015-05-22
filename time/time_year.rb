require 'tbpgr_utils'

day_2015 = Time.utc(2015, 1, 6)
day_2016 = Time.utc(2016, 5, 21)
bulk_puts_eval binding, <<-EOS
day_2015.year
day_2016.year
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
