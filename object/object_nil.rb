require 'tbpgr_utils'

hoge = nil

bulk_puts_eval binding, <<-EOS
nil.nil?
NIL.nil?
hoge.nil?
'hoge'.nil?
''.nil?
false.nil?
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils