require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
Proc.new { || }.arity
Proc.new { |x|x }.arity
Proc.new { |*x|x }.arity
Proc.new { |x, y|[x, y] }.arity
Proc.new { |x, *y|[x, y] }.arity
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
