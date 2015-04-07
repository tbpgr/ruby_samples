require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
:hoge.slice(1, 2)
:hoge.slice(2)
:hoge.slice(-2)
:hoge.slice('og')
:hoge.slice(/[aiueo]/)
:hage.slice(/[aiueo]/)
:foobarbaz[/(ba.)(ba.)/, 0]
:foobarbaz[/(ba.)(ba.)/, 1]
:foobarbaz[/(ba.)(ba.)/, 2]
:foobarbaz.slice(/(ba.)(ba.)/, 0)
:foobarbaz.slice(/(ba.)(ba.)/, 1)
:foobarbaz.slice(/(ba.)(ba.)/, 2)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
