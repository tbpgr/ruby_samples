require 'tbpgr_utils'

class Hoge
  def public_hoge
    return "public_hoge" unless block_given?
    yield
  end

  protected

  def protected_hoge
    return "protected_hoge" unless block_given?
    yield
  end

  private

  def private_hoge
    return "private_hoge" unless block_given?
    yield
  end
end

hoge = Hoge.new

bulk_puts_eval binding, <<-EOS
hoge.send(:public_hoge)
hoge.send(:protected_hoge)
hoge.send(:private_hoge)
hoge.send(:public_hoge) { |e|p "block public_hoge" }
hoge.send(:protected_hoge) { |e|p "block protected_hoge" }
hoge.send(:private_hoge) { |e|p "block private_hoge" }
hoge.__send__(:public_hoge)
hoge.__send__(:protected_hoge)
hoge.__send__(:private_hoge)
hoge.__send__(:public_hoge) { |e|p "block public_hoge" }
hoge.__send__(:protected_hoge) { |e|p "block protected_hoge" }
hoge.__send__(:private_hoge) { |e|p "block private_hoge" }
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
