require 'tbpgr_utils'

tmp = /(h.ge)(f.o)(b.r)/.to_s
bulk_puts_eval binding, <<-EOS
/h.ge/.to_s
/(h.ge)(f.o)(b.r)/.to_s
/#{tmp}/ =~ 'hogefoobarlast@@@'
$~
/#{tmp}(last)/ =~ 'hogefoobarlast@@@'
$~
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
