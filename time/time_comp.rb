require 'tbpgr_utils'

time20150101_1 = Time.new(2015, 1, 1)
time20150101_2 = Time.new(2015, 1, 1)
time20150102 = Time.new(2015, 1, 2)

bulk_puts_eval binding, <<-EOS
time20150101_1 <=> time20150101_1
time20150101_1 <=> time20150101_2
time20150101_1 <=> time20150102
time20150102 <=> time20150101_1
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
