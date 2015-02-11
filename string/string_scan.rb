require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
"hogehigehage".scan(/hoge/)
"hogehigehage".scan(/h.ge/)
EOS
"hogehigehage".scan(/h.ge/) {|e|p e.upcase}

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
