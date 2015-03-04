require 'tbpgr_utils'

Person = Struct.new(:name, :age)

tanaka = Person.new("tanaka", 24)
suzuki = Person.new("suzuki", 25)
bulk_puts_eval binding, <<-EOS
tanaka
tanaka[:age] = 33
tanaka
suzuki
suzuki[:name] = "nise-suzuki"
suzuki
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
