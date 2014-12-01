require 'pp'
require 'gems'

pp Gems.downloads('rspec_piccolo').take(4)
