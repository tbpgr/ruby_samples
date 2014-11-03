require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
(2..5) == (2..5)
(2..5) == Range.new(2, 5)
Range.new(2, 5) == Range.new(2, 5)
(2..4) == Range.new(2, 5, true)
(2...5) == Range.new(2, 5, true)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
