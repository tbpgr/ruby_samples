class Hoge
  def public_hoge(msg)
    'public_hoge:' + msg
  end

  protected

  def protected_hoge(msg)
    'protected_hoge:' + msg
  end

  private

  def private_hoge(msg)
    'private_hoge:' + msg
  end
end

hoge = Hoge.new
puts hoge.public_send :public_hoge, "hoge"
begin
  hoge.public_send :protected_hoge, "hoge"
rescue => e
  puts e
end

begin
  hoge.public_send :private_hoge, "hoge"
rescue => e
  puts e
end

puts hoge.send :public_hoge, "hoge"
puts hoge.send :protected_hoge, "hoge"
puts hoge.send :private_hoge, "hoge"
