require 'tbpgr_utils'

name = ARGV[0]
age = ARGV[1]

Person = Struct.new(:name, :age)
tanaka = Person.new('tanaka', 24)
yogore = Person.new(name, age)

bulk_puts_eval binding, <<-EOS
tanaka.name.tainted?
tanaka.name.taint
tanaka.name.tainted?
tanaka.name.untaint
tanaka.name.tainted?
yogore.name.tainted?
yogore.name.taint
EOS

$SAFE = 1
# 汚染された文字列でディレクトリ操作をしようとしてセキュリティエラーが発生
Dir.mkdir(yogore.name) unless Dir.exist?(yogore.name)

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
