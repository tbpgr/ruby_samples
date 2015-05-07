require 'tbpgr_utils'

date = Time.local(2015, 1, 2, 3, 4, 5)
bulk_puts_eval binding, <<-EOS
date.strftime("%Y%m%d %H:%M:%S")
date.strftime("%c")
date.strftime("%B")
date.strftime("%b")
date.strftime("%F")
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
