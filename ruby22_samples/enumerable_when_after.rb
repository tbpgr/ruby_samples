print *[1, 1, 2, 3, 3, 4, 5].slice_when { |a, b| a.odd? && b.even? }
