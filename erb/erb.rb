require 'erb'

higes = ['sato', 'tanaka']
src = DATA.read
puts src
higes.each { |hige|
  hige = '@@@@@@@'
  puts ERB.new(src).result(binding)
}

__END__
puts :hoge
<%=hige%>
puts :hage
