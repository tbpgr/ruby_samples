require 'tbpgr_utils'

date1 = Time.utc(2015, 1, 2, 3, 4 ,5)
date2 = Time.local(2015, 1, 2, 3, 4 ,5)

bulk_puts_eval binding, <<-EOS
date1.zone
date2.zone
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
