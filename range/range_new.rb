require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
Range.new(2, 5).to_a
Range.new(2, 5, false).to_a
(2..5).to_a
Range.new(2, 5, true).to_a
(2...5).to_a
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
