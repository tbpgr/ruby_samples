require 'tbpgr_utils'


hash = {}
bulk_puts_eval binding, <<-EOS
ObjectSpace.count_objects
class Hoge; end
ObjectSpace.count_objects
hoge1 = Hoge.new
ObjectSpace.count_objects
hoge2 = Hoge.new
ObjectSpace.count_objects
hoge3 = Hoge.new
ObjectSpace.count_objects
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
