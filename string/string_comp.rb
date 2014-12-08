require 'tbpgr_utils'

class NumericCompare
  def initialize(number)
    @number = number
  end

  def <=>(other)
    @number <=> other.to_i
  end
end

bulk_puts_eval binding, <<-EOS
"hige" <=> "hage"
"hige" <=> "hige"
"hige" <=> "hoge"
"ほげ" <=> "ほが"
"ほげ" <=> "ほげ"
"ほげ" <=> "ほご"
"5" <=> NumericCompare.new(4)
"5" <=> NumericCompare.new(5)
"5" <=> NumericCompare.new(6)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
