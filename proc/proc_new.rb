require 'tbpgr_utils'

def not_use_block_case(msg)
  pr = Proc.new
  pr.call(msg * 2)
end

pr = Proc.new { |msg| msg * 2 }

bulk_puts_eval binding, <<-EOS
not_use_block_case('hoge') {|arg| arg }
pr.call('hige')
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
