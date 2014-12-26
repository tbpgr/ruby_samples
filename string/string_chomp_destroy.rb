hoge1 = "hoge\n"
hoge2 = "hoge\r\n"
hoge3 = "hoge\r"

puts "chomp()"
p hoge1
hoge1.chomp!
p hoge1
p hoge2
hoge2.chomp!
p hoge2
p hoge3
hoge3.chomp!
p hoge3

hoge1 = "hoge\n"
hoge2 = "hoge\r\n"
hoge3 = "hoge\r"

puts
puts "chomp('\\r')"
p hoge1
hoge1.chomp!("\r")
p hoge1
p hoge2
hoge2.chomp!("\r")
p hoge2
p hoge3
hoge3.chomp!("\r")
p hoge3

puts "Paragraph Mode"
hoge =<<-EOS
hoge
hige

hage


huge




hege



EOS

puts "chomp('')"
p hoge
p hoge.chomp!("")
