def newton_method(n, x)
  return to_enum :newton_method, n, x unless block_given?
  loop do
    x = (x + n/x) / 2.0
    yield(x)
  end
end

newton_method(2, 1.0).take(10).each do |e|
  puts e
end
