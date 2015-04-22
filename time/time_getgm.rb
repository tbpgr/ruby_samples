require 'tbpgr_utils'

day = Time.local(2015,1,1,20,15,1)
bulk_puts_eval binding, <<-EOS
day.gmt?
day
y = day.getgm
y.gmt?
day == y
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
