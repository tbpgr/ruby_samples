require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
:upcase.to_proc.class
:upcase.to_proc["hOgE"]
:upcase.to_proc.("hOgE")
:upcase.to_proc.call("hOgE")
:gsub.to_proc["hoge", /[aiueo]/, '@']
[*?a..?e].map(&:upcase)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
