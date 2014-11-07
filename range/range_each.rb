require 'date'

ret = (1..5).each { |e|print e }
print "\n", (1..5).each, "\n"
ret = ('a'..'e').each { |e|print e }
print "\n", ('a'..'e').each, "\n"
ret = (Date.new(2014,1,4)..Date.new(2014,1,10)).each { |e|print e }
print "\n", (Date.new(2014,1,4)..Date.new(2014,1,10)).each, "\n"

date_range = (Date.new(2014,1,4)..Date.new(2014,1,10))
print date_range.take(5).map(&:to_s), "\n"