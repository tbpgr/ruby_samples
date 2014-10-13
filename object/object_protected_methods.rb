require 'tbpgr_utils'

module Mod
  protected
  def mod; end
end

class Parent
  protected
  def parent;end
end

class Child < Parent
  include Mod
  protected
  def child;end
end

child = Child.new
bulk_puts_eval binding, <<-EOS
child.protected_methods.first(5)
child.protected_methods(false).first(5)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils