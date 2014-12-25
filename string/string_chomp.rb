hoge1 = "hoge\n"
hoge2 = "hoge\r\n"
hoge3 = "hoge\r"

puts "chomp()"
(1..3).each do |i|
  eval "p hoge#{i}"
  eval "p hoge#{i}.chomp"
  puts 
end

puts "chomp('\\r')"
(1..3).each do |i|
  eval "p hoge#{i}"
  eval "p hoge#{i}.chomp(\"\\r\")"
  puts 
end

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
p hoge.chomp("")
p hoge.chomp()
