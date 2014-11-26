require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
/h.ge/.match("hoge")
/h.ge/.match("hige")
/h.ge/.match("hoge", 1)
/h.ge/.match("ahoge", 1)
/(h.ge)(h.ge)(h.ge)/.match("hogehigehage") { |e|e.to_a }
/(h.ge)(h.ge)(h.ge)/.match("hogehigehage", 12) { |e|e.to_a }
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
