require 'tbpgr_utils'

$_ = "hogehigehage"

~ /(h.ge)(h.ge)(h.ge)/
bulk_puts_eval binding, <<-EOS
Regexp.last_match
Regexp.last_match(0)
Regexp.last_match(1)
Regexp.last_match(2)
Regexp.last_match(3)
Regexp.last_match(4)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
