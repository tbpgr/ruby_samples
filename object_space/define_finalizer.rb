class Hoge
  def Hoge.callback
    proc {
      puts "finalize"
    }
  end

  def initialize
    ObjectSpace.define_finalizer(self, Hoge.callback)
  end
end

hoge = Hoge.new
GC.start
