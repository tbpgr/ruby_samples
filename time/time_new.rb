require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
Time.new
Time.now
Time.new == Time.now
Time.new(2015,1,2,3,4,5)
Time.new(2015,1,2,3,4,5, "+03:00")
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
