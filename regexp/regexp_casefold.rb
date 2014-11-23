require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
/h.ge/i.casefold?
/h.ge/.casefold?
Regexp.compile("h.ge", Regexp::IGNORECASE).casefold?
Regexp.compile("h.ge").casefold?
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
