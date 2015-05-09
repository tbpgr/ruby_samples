require 'tbpgr_utils'

sunday = Time.utc(2015, 1, 4)
monday = Time.utc(2015, 1, 5)
bulk_puts_eval binding, <<-EOS
monday.wday
monday.sunday?
sunday.wday
sunday.sunday?
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
