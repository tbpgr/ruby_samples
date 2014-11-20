require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
/h.ge/==="hoge"
/h.ge/==="hige"
/h.ge/==="hig"
Regexp.compile(/h.ge/)==="hoge"
Regexp.compile(/h.ge/)==="hige"
Regexp.compile(/h.ge/)==="hig"
EOS

def sample(msg)
  case msg
  when /h.ge/
    "match h.ge : #{msg}"
  when /ほげ/
    "match ほげ : #{msg}"
  else
    "not match"
  end
end

bulk_puts_eval binding, <<-EOS
sample('hoge')
sample('hige')
sample('ほげ')
sample('ほげりん')
sample('はげ')
sample('hig')
EOS


__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
