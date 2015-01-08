require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
"hogehagehige".each_char
"hogehagehige".each_char.class
EOS
"hogehagehige".each_char { |c|print c }

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
