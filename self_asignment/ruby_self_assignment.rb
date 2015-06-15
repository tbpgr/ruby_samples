require 'tbpgr_utils'

a=10
bulk_puts_eval binding, <<-EOS
a+=1
a-=1
a*=2
a/=2
a%=4
a**=3
EOS

b=false
bulk_puts_eval binding, <<-EOS
b|=false
b|=true
b&=false
b|=true
b&=true
b^=true
b^=true
EOS

bulk_puts_eval binding, <<-EOS
s='hige'
s||='hoge'
s=nil
s||='hoge'
s=nil
s&&='hoge'
s='hige'
s&&='hoge'
s<<='append'
EOS

__END__
自己代入可能
+, -, *, /, %, **, &, |, ^, <<, >>, &&, ||

下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
