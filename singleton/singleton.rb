require 'singleton'

class Hoge
  include Singleton
  def hoge
    "hoge"
  end
end

h = Hoge.instance
puts h.hoge
begin
  Hoge.new
rescue => e
  puts e.message
end
