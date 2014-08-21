require "gviz"
require "prime"

def arithmetic_progression_enum(base)
  Enumerator.new do |y|
    i = 0
    loop do
      y << i + base
      i += base
    end
  end
end

bases = *Prime.each(5)
arithmetic_progressions = Prime.each(5).with_object([]) do |prime, memo|
  memo << arithmetic_progression_enum(prime)
end

max = 20
Graph do
  global layout:'neato', label:'Arithmetic progression', fontsize:20, size:15, overlap:false
  nodes shape:'circle', style:'filled', fillcolor: :yellow

  (1..max).each { |i| node :"#{i}" }
  
  arithmetic_progressions.each_with_index do |e, i|
    e.take(max/bases[i]).each_cons(2).with_index do |e, j|
      route Hash[*e]
      node :"#{e.last}", { style: :filled, fillcolor: :skyblue }
    end
  end

  node :"1", { style: :filled, fillcolor: :red }
  node :"#{max}", { style: :filled, fillcolor: :green }

  save :arithmetic_progression, :png
end
