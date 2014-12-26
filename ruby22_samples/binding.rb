require 'pp'

class Hoge
  def hoge(msg)
    a = 1
    b = 2
    pp binding.local_variables
    pp binding.receiver
    pp binding.receiver.hige
  end

  def hige
    'hige'
  end
end

Hoge.new.hoge("@@hoge@@")
