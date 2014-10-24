class Hoge
  def Hoge.callback
    proc {
      puts "finalize"
    }
  end

  def initialize
    ObjectSpace.define_finalizer(self, Hoge.callback)
  end

  def undef
    ObjectSpace.undefine_finalizer(self)
  end
end

hoge = Hoge.new
GC.start
hoge = Hoge.new
hoge.undef
GC.start
