require 'pp'
require 'gems'

# Return some basic information about rails.
pp Gems.search('ruboty-').map { |e|e['name'] }
