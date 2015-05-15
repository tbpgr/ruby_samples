require 'tbpgr_utils'

monday = Time.utc(2015, 1, 5)
tuesday = Time.utc(2015, 1, 6)
bulk_puts_eval binding, <<-EOS
monday.wday
monday.monday?
tuesday.wday
tuesday.monday?
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
