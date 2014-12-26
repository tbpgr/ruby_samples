random_numbers = (1..5).each_with_object([]) do |e, memo|
  rand(1..10).times { memo << e }
end
random_numbers.shuffle!
print random_numbers, "\n"
print random_numbers.group_by(&:itself)

__END__
print random_numbers.group_by { |e|e }
