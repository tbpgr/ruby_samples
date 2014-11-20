require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
/h.ge/ == /h.ge/
/h.ge/ == Regexp.compile(/h.ge/)
/h.ge/ == /h.ge/i
/(?-mix:hoge)|(?-mix:hige)/ == Regexp.union(/hoge/, /hige/)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
