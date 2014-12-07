require 'tbpgr_utils'

base = "base"
bulk_puts_eval binding, <<-EOS
base << "plus"
base
base.concat "plus"
base
base << 65 
base
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
