require 'tbpgr_utils'

r = Regexp.compile("hoge")
ri = Regexp.compile("hoge", Regexp::IGNORECASE)
rr = Regexp.compile(/H.Ge/i, Regexp::IGNORECASE)
bulk_puts_eval binding, <<-EOS
Regexp.compile("hoge")
Regexp.compile("hoge") == /hoge/
Regexp.new("hoge") == /hoge/
r.match("hoge")
r.match("HoGe")
Regexp.compile("HoGe", Regexp::IGNORECASE)
Regexp.compile("HoGe", Regexp::IGNORECASE) == /HoGe/i
Regexp.new("HoGe", Regexp::IGNORECASE) == /HoGe/i
ri.match("HoGe")
Regexp.compile(/H.Ge/i, Regexp::IGNORECASE)
Regexp.compile(/H.Ge/i, Regexp::IGNORECASE) == /H.Ge/i
Regexp.new(/H.Ge/i, Regexp::IGNORECASE) == /H.Ge/i
rr.match("HoGe")
rr.match("HiGe")
rr.match("HaGe")
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
