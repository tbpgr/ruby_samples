require 'tbpgr_utils'

multi_line_text =<<-EOS
line1
line2
line3
EOS

bulk_puts_eval binding, <<-EOS
multi_line_text.each_line
multi_line_text.each_line.class
multi_line_text.each_line.to_a
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
