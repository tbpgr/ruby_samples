enumerator_methods = Enumerator.methods

slice_methods = enumerator_methods.to_enum(:each_slice, 3)
slice_methods.each do |e|
  print e, "\n"
end
print slice_methods.take(5), "\n"
print slice_methods.map { |a, b, c|[c, b, a] }.take(5), "\n"
