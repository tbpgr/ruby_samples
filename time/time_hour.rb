require 'tbpgr_utils'

date = Time.new(2015, 1, 2, 3, 4, 5)
bulk_puts_eval binding, <<-EOS
date
date.hour
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
