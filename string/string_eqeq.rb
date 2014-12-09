require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
"hoge" == "hoge"
"hoge" == String.new("hoge")
"hoge".eql?(String.new("hoge"))
"hoge".equal?(String.new("hoge"))
"1" == 1
EOS

class Fixnum
  def ==(other)
    self.to_s == other
  end

  def to_str
    number.to_s
  end
end

bulk_puts_eval binding, <<-EOS
"1" == 1
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
