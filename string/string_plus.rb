require 'tbpgr_utils'

base = 'hoge'
bulk_puts_eval binding, <<-EOS
base + 'add'
base
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
