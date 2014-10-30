require 'tbpgr_utils'

pr1 = Proc.new {}
pr2 = proc {}
lm = lambda {}

bulk_puts_eval binding, <<-EOS
pr1.source_location
pr2.source_location
lm.source_location
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
