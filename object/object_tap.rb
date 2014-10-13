
p [*1..5].zip([*?a..?e]).tap { |e|print e.inspect, "\n"}
       .map { |num, alph|num + alph.ord }.tap { |e|print e.inspect, "\n"}
       .map { |e|e.chr }.tap { |e|print e.inspect, "\n"}
       .map { |e|e.ord }.tap { |e|print e.inspect, "\n"}
       .reduce(&:+)
