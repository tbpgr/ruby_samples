print [*'1'..'11'].min(3), "\n"
print [*'1'..'11'].min_by(3) { |e|e.to_i }, "\n"
print [*'1'..'11'].max(3), "\n"
print [*'1'..'11'].max_by(3) { |e|e.to_i }, "\n"
