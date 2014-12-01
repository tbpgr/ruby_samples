require 'pp'
require 'gems'

pp Gems.latest.take(2).map { |e|e['name'] }
