require 'tbpgr_utils'

def hoge(&b) b.lambda? end
def hige;;end
bulk_puts_eval binding, <<-EOS
lambda {}.lambda?
Proc.new {}.lambda?
proc {}.lambda?
hoge {}
method(:hige).to_proc.lambda?
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
