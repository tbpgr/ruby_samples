require 'tbpgr_utils'

texts =<<-EOS
hoge1
hoge2
hoge3
EOS

text = "hoge"
bulk_puts_eval binding, <<-EOS
texts
texts.chop!
texts
text
text.chop!
text
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
