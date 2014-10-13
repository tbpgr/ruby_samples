require 'tbpgr_utils'

module Mod
  def mod
    'mod'
  end
end

class Parent
  def parent
    'parent'
  end
end

class Child < Parent
  include Mod
  def child
    'child'
  end
end

child = Child.new
bulk_puts_eval binding, <<-EOS
child.public_method(:mod)
child.public_method(:mod).()
child.public_method(:parent)
child.public_method(:parent).()
child.public_method(:child)
child.public_method(:child).()
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils