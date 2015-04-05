require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
:hoge.match /h.ge/
:hage.match /h.ge/
:ahage.match /h.ge/
:bar.match /h.ge/
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
