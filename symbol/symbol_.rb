require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
Symbol.all_symbols.take(3)
Symbol.all_symbols.size
hoge = :hoge
Symbol.all_symbols.size
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
