require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
Regexp.union(/h.ge/, /b.r/, /h.o/)
Regexp.union([/h.ge/, /b.r/, /h.o/])
Regexp.union("h.ge", "b.r", "h.o") # String を指定されるとエスケープして正規表現に変換される
Regexp.union
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
