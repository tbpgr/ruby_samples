require 'ostruct'
tanaka = OpenStruct.new
tanaka.name = 'tanaka'
p tanaka.name
p tanaka.instance_variable_get(:@table)
tanaka.age = 'tanaka'
p tanaka.name
p tanaka.age
p tanaka.instance_variable_get(:@table)
