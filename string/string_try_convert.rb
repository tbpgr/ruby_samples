require 'tbpgr_utils'

class Convertable
  def to_str
    "converted"
  end
end

bulk_puts_eval binding, <<-EOS
String.try_convert(1)
String.try_convert(Convertable.new)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
