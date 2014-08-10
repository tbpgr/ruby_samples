require 'test_toolbox'

class UnitFractions
  def each(base_denominator)
    return to_enum(:each, base_denominator) unless block_given?
    denominator = 1
    loop do
      denominator = denominator * base_denominator
      unit_fraction = Rational(1, denominator)
      yield(unit_fraction)
    end
  end
end

uf = UnitFractions.new


base_denominators = [*2..5]
base_denominators.each do |base_denominator|
  dp_line __LINE__
  print "base_denominator = #{base_denominator}", "\n"
  [*1..4].each do |limit|
    first_ten_ufs = uf.each(base_denominator).take(limit)
    print first_ten_ufs, "\n"
    print first_ten_ufs.reduce(&:+), "\n"
  end
  dp_line __LINE__
end

__END__
下記はTbpgrUtils gemの機能
__LINE__は

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
