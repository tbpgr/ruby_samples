require 'tbpgr_utils'

class Hoge
  attr_accessor :count

  def initialize(count)
    @count = count
  end

  def succ
    copy = self.dup
    copy.count += 1
    copy
  end

  def <=>(other)
    @count <=> other.count
  end
end

hoge_min = Hoge.new(3)
hoge_max = Hoge.new(20)

bulk_puts_eval binding, <<-EOS
(2..10).step(2)
(2..10).step(2).to_a
(hoge_min..hoge_max).step(3).to_a
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
