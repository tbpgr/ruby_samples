require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
Regexp.new("h.ge").options
Regexp.new("h.ge", Regexp::IGNORECASE).options
Regexp.new("h.ge", Regexp::IGNORECASE | Regexp::MULTILINE).options
/h.ge/.options
/h.ge/i.options
/h.ge/mi.options
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
