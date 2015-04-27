require 'tbpgr_utils'

jp = Time.local(2015, 1, 1)
gm = Time.new(2015, 1, 1).getgm
bulk_puts_eval binding, <<-EOS
jp.zone
jp.gmt_offset
gm.zone
gm.gmt_offset
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
