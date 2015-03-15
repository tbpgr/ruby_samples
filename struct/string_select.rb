require 'tbpgr_utils'

Person = Struct.new(:name, :age, :nickname)
tanaka = Person.new('tanaka', 34, 'tanachi')

bulk_puts_eval binding, <<-EOS
tanaka.select { |e|e.is_a?(String) }
tanaka.select { |e|e.is_a?(Integer) }
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
