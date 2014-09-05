require 'tbpgr_utils'

class Hoge
  def self.call(msg)
    msg
  end
end

class Hige
  def call(msg)
    msg
  end
end

class Parent
  def self.call(msg)
    msg
  end
end

# 継承も使えます
class Child < Parent
end

module MyModule
  def call(msg)
    msg
  end
end

# Mix-inも使えます
class Includer
  include MyModule
end

bulk_puts_eval binding, <<-EOS
Hoge.("hoge")
Hoge.call("hoge")
Hige.new.("hige")
Hige.new.call("hige")
Child.("child")
Child.call("child")
Includer.new.("includer")
Includer.new.call("includer")
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
