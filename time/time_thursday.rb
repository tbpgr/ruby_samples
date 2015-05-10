require 'tbpgr_utils'

wednesday = Time.utc(2015, 1, 7)
thursday = Time.utc(2015, 1, 8)
bulk_puts_eval binding, <<-EOS
wednesday.wday
wednesday.thursday?
thursday.wday
thursday.thursday?
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
