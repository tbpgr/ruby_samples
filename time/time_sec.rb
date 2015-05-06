require 'tbpgr_utils'

date = Time.local(2015,2,3,4,5,6)

bulk_puts_eval binding, <<-EOS
date.sec
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
