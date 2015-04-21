require 'tbpgr_utils'

ENV['TZ'] = 'US/Pacific'
bulk_puts_eval binding, <<-EOS
Time.local(2000, 4, 2).isdst
Time.local(2000, 4, 3).isdst
Time.local(2000, 10, 29).isdst
Time.local(2000, 10, 30).isdst
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
