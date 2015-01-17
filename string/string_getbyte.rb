require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
'hほgげe'.bytes
'hほgげe'.bytes[0]
'hほgげe'.getbyte(0)
'hほgげe'.getbyte(8)
'hほgげe'.getbyte(9)
'hほgげe'.getbyte(-1)
EOS
# 'hほgげe'.getbyte()

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
