require 'tbpgr_utils'

class DuckTypeRegexp
  def initialize(pattern)
    @pattern = pattern
  end

  def to_regexp
    /#{@pattern}/
  end
end

bulk_puts_eval binding, <<-EOS
Regexp.try_convert(/h.ge/)
Regexp.try_convert("h.ge")
Regexp.try_convert(DuckTypeRegexp.new("h.ge"))
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
