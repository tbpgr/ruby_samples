require 'prettyprint'

p2 = PrettyPrint.new('', 10)
s = 'hello'
p2.text(s)
p2.group(p2.indent + s.size + 1) do
  p2.breakable
  p2.text('0123456789')
  p2.breakable
  p2.text('b')
  p2.breakable
  p2.text('c')
end
p2.flush
puts p2.output
