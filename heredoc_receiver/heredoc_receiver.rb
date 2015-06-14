puts <<LABEL.upcase
HoGe
HiGe
HaGe
LABEL

puts <<LABEL.downcase
HoGe
HiGe
HaGe
LABEL

print <<LABEL.gsub('H', '@')
HoGe
HiGe
HaGe
LABEL
