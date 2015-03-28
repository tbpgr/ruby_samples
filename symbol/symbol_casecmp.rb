require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
:b<=>:A
:b<=>:a
:b<=>:B
:b<=>:b
:b<=>:C
:b<=>:c
:b.casecmp(:A)
:b.casecmp(:a)
:b.casecmp(:B)
:b.casecmp(:b)
:b.casecmp(:C)
:b.casecmp(:c)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils