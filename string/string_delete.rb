require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
'hogehigehage'.delete 'h'
'hogehigehage'.delete 'a-g'
'hogehigehage'.delete '^a-g'
'hogehigehage'.delete 'a-g', 'e-h'
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
