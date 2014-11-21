require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
/h.ge/=~"hoge"
/h.ge/=~"hige"
/h.ge/=~"testhage"
/h.ge/=~"hoo"
/h.ge/=~nil
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
