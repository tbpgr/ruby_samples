text = DATA.read
print text.lines, "\n"
print text.lines == text.each_line.to_a, "\n"

__END__
line1
line2
line3
line4
line5
