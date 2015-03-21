require 'tbpgr_utils'


bulk_puts_eval binding, <<-EOS
:hoge <=> :hage  # => 1
:hoge <=> :hoge  # => 0
:hage <=> :hoge  # => -1
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
