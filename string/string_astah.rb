require 'tbpgr_utils'

bf =->(x) { '>%s.' % (?+ * x.ord) }

bulk_puts_eval binding, <<-EOS
'hoge'*0
'hoge'*2
?+*3
'+' '-'*3
'+%s-' % '1' * 3
'hoge'.chars.map { |e|bf[e] }
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
