require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
(2..5).exclude_end?
(2...5).exclude_end?
Range.new(2, 5).exclude_end?
Range.new(2, 5, false).exclude_end?
Range.new(2, 5, true).exclude_end?
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
