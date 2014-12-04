require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
'hello %s world' % 'Ruby'
'hello %s world' % 'Java'
'%-10s' % 'AWK'
'%-10s' % 'C'
'%#10s' % 'Perl'
'%#10s' % 'Python'
'%s,%s,%s' % ['C', 'C++', 'C#']
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
