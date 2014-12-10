require 'tbpgr_utils'

class Matchable
  def initialize(value)
    @value = value
  end

  def =~(other)
    /.*#{@value}.*/ =~ other.to_s
  end
end

bulk_puts_eval binding, <<-EOS
"hoge" =~ /h.ge/
"ahoge" =~ /h.ge/
"hogehigehage" =~ /(h.ge)(h.ge)(h.ge)/
Regexp.last_match
"bar" =~ /h.ge/
"tanaka" =~ Matchable.new('tanaka')
"ichiro tanaka" =~ Matchable.new('tanaka')
"tanaka ichiro" =~ Matchable.new('tanaka')
"suzuki ichiro" =~ Matchable.new('tanaka')
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
