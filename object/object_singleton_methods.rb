require 'tbpgr_utils'

class ParentHoge
  class << self
    def public_class_parent_hoge; end
    protected
    def protected_class_parent_hoge; end
    private
    def private_class_parent_hoge; end
  end

  def public_parent_hoge; end
  protected
  def protected_parent_hoge; end
  private
  def private_parent_hoge; end
end

module Hogeable
  def public_hogeable; end
  protected
  def protected_hogeable; end
  private
  def private_hogeable; end
end

class Hoge < ParentHoge
  class << self
    def public_class_hoge; end
    protected
    def protected_class_hoge; end
    private
    def private_class_hoge; end
  end

  def public_hoge; end
  protected
  def protected_hoge; end
  private
  def private_hoge; end
end

hoge = Hoge.new
class << hoge
  def public_singleton_hoge; end
  protected
  def protected_singleton_hoge; end
  private
  def private_singleton_hoge; end
end

hoge.extend Hogeable

bulk_puts_eval binding, <<-EOS
hoge.methods.grep(/hoge/) - hoge.singleton_methods.grep(/hoge/)
hoge.singleton_methods.grep(/hoge/)
Hoge.methods.grep(/hoge/) - Hoge.singleton_methods.grep(/hoge/)
Hoge.singleton_methods.grep(/hoge/)
hoge.singleton_methods(false).grep(/hoge/)
Hoge.singleton_methods(false).grep(/hoge/)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
