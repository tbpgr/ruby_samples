require 'tbpgr_utils'

p1 = Proc.new {}
p2 = proc {}
p3 = lambda {}

class Sum
  def sum(a, b)
    a + b
  end

  def to_proc
    -> (a, b) {a + b}
  end
end

def use_proc(a, b, pr)
  pr.to_proc.call(a, b)
end

bulk_puts_eval binding, <<-EOS
p1.to_proc == p1
p2.to_proc == p2
p3.to_proc == p3
use_proc(1, 2, Sum.new)
use_proc(1, 2, Proc.new { |a, b|a + b })
EOS


__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
