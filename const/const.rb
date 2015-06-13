require 'tbpgr_utils'

class Parent
  HOGE = "hoge"
end

class Child < Parent
  HOGE = "child hoge"

  def hoge
    HOGE
  end
  def parent_hoge
    Parent::HOGE
  end
end

bulk_puts_eval binding, <<-EOS
Parent::HOGE
Child::HOGE
Child.new.hoge
Child.new.parent_hoge
EOS

__END__
[A-Z] で始まる識別子は定数
