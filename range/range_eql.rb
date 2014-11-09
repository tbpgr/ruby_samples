require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
(2..5) == Range.new(2, 5, false)
(2..5) == Range.new(2, 6, false)
(2...5) == Range.new(2, 5, true)
(2...5) == Range.new(2, 6, false)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
