require 'pp'
require 'gems'

pp Gems.just_updated.take(2).map { |e|e['name'] }
