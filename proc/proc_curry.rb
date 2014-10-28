require 'tbpgr_utils'

_sum_to_chr_times = proc {|x, y, count| (x + y).chr * count }

bulk_puts_eval binding, <<-EOS
_sum_to_chr_times.curry[65][0][3]
_sum_to_chr_times.curry[65][1][2]
_sum_to_chr_times.curry[65][32][1]
EOS

start_from_a_curry = _sum_to_chr_times.curry[65][32]
random_counts = [*1..100].shuffle.take(10)
puts random_counts.map(&start_from_a_curry)

random_alphabet = [*(('A'.ord)..('z'.ord))].shuffle.take(10)
random_counts = [*1..100].shuffle.take(3)
random_alphabet.each do |alphabet|
  alphabet_curry = _sum_to_chr_times.curry[alphabet][0]
  puts random_counts.map(&alphabet_curry)
end

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
