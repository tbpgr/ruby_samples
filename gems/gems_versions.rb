require 'pp'
require 'gems'

pp Gems.versions('rspec_piccolo').take(5).map { |e|"rspec_piccolo:#{e['number']}"}
