require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
"hogehigehage".gsub(/h.ge/)
"hogehigehage".gsub(/h.ge/).to_a
"hogehigehage".gsub(/h.ge/) { |e|e.upcase}
"hogehigehage".gsub(/h.ge/, "@")
hash = { 'o' => 'xo', 'i' => 'xi', 'a' => 'xa'}
"hogehigehage".gsub(/[oia]/, hash)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
