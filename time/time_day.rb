require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
Time.new(2015, 1, 2).day
Time.new(2015, 1, 2).mday
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
