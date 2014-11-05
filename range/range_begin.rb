require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
(2..5).begin
(2..5).first
(2..5).first(2)
(2..1).first
(2..1).first(1)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
