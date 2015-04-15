require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
t = Time.now
t.gmt?
t.gmtime
t.gmt?
t.localtime
t.gmt?
t.utc
t.gmt?
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
