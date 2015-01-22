require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
'abcabcabcabcabc'.index("abc")
'abcabcabcabcabc'.index("abc", 1)
'abcabcabcabcabc'.index("zzz")
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
