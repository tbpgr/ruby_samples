require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
self.class
nil.class
true.class
false.class
__FILE__
__FILE__.class
__LINE__
__LINE__.class
__ENCODING__
__ENCODING__.class
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
