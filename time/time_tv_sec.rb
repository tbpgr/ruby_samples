require 'tbpgr_utils'

date6 = Time.local(2015, 1, 2, 3, 4, 5, 6)
date5 = Time.local(2015, 1, 2, 3, 4, 4, 3)

bulk_puts_eval binding, <<-EOS
date6.tv_sec
date5.tv_sec
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
