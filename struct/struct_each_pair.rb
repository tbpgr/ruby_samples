require 'tbpgr_utils'

Person = Struct.new(:name, :age, :url, :language)
tanaka = Person.new("tanaka", 23, "http://hogehoge", "Java")
suzuki = Person.new("suzuki", 33, "http://higehige", "Ruby")

bulk_puts_eval binding, <<-EOS
tanaka.each_pair.to_a
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
