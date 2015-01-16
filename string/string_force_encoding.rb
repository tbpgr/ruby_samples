require 'tbpgr_utils'

hello = [227, 129, 147, 227, 130, 147, 227, 129, 171, 227, 129, 161, 227, 130, 143]
bulk_puts_eval binding, <<-EOS
packed = hello.pack("C*")
packed.encoding
packed.force_encoding(Encoding::UTF_8)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
