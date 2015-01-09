require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
'hほoげg'.each_codepoint
'hほoげg'.each_codepoint.class
'hほoげg'.each_codepoint.to_a
EOS
'hほoげg'.each_codepoint { |e|print e * 2, "," }

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
