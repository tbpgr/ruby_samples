require 'pathname'

p Pathname.new('pathname.rb')
p Pathname('pathname.rb')
p Pathname.pwd
p Pathname.glob('pathname*')
p Pathname.pwd + 'hoge'
p Pathname.pwd + '../hige'

__END__

