'hoge'.each_byte { |e|print e, ',' }
puts
'hoge'.each_byte { |e|print (e + 1).chr }
puts
each_hoge = 'hoge'.each_byte
puts each_hoge.class
puts each_hoge.map { |e|(e - 32).chr }.join
