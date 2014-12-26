print *[1, 1, 2, 3, 3, 4, 5].slice_before(&:even?), "\n"
print *[1, 1, 2, 3, 3, 4, 5].slice_after(&:even?), "\n"
