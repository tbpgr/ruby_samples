require 'tbpgr_utils'

date6 = Time.local(2015, 1, 2, 3, 4, 5, 6)
date5 = Time.local(2015, 1, 2, 3, 4, 5, 5)

bulk_puts_eval binding, <<-EOS
date6.tv_nsec
date5.tv_nsec
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
