require 'tbpgr_utils'

date = Time.now

bulk_puts_eval binding, <<-EOS
date.nsec
date.tv_nsec
date.nsec == date.tv_nsec
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
