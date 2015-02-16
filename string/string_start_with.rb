require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
"012345".start_with?("012")
"012345".start_with?("012")
"012345".start_with?("999", "345")
"012345".start_with?("999", "@@@")
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
