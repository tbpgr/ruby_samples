require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
(2..5).end
(2...5).end
(2..5).last
(2...5).last
(2..5).last(2)
(2...5).last(2)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
