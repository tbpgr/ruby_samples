require 'tbpgr_utils'

pr = Proc.new { |msg| msg * 2 }

def use_case(msg, converted_message)
  case converted_message
  when msg.upcase then "upcase"
  when msg.downcase then "downcase"
  when Proc.new { |msg| msg * 2 } then "double"
  else
    "else"
  end
end

bulk_puts_eval binding, <<-EOS
pr["hoge"]
pr.call("hoge")
pr.("hoge")
pr === "hoge"
pr.yield("hoge")
use_case("hOgE", "HOGE")
use_case("hOgE", "hoge")
use_case("hOgE", "hOgEhOgE")
EOS


__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
