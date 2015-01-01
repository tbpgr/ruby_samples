require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
'hogehagehige'.count('h')
'hogehagehige'.count('^h')
'hogehagehige'.count('a')
'hogehagehige'.count('a-e')
'hogehagehige'.count('a-e', '^a')
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
