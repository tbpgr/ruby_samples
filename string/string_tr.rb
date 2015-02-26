require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
"abcde".tr("b-d", "@@@")
"abcde".tr("b-d", "0-2")
"abcde".tr("b-d", "0-4")
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
