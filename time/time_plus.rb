require 'tbpgr_utils'


date = Time.new(2014, 1, 1)
bulk_puts_eval binding, <<-EOS
date+1
date+10
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
