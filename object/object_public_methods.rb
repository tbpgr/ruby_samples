require 'tbpgr_utils'

module Mod
  def mod; end
end

class Parent
  def parent;end
end

class Child < Parent
  include Mod
  def child;end
end

child = Child.new
bulk_puts_eval binding, <<-EOS
child.public_methods.first(5)
child.public_methods(false).first(5)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils