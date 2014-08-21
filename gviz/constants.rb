require "gviz"
require "pp"

Gviz.constants.each do |const|
  print const, ":"
  pp Gviz.const_get(const)
end