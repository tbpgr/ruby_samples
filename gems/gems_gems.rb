require 'pp'
require 'gems'

pp Gems.gems('tbpgr').take(2).map { |e|e['name']}
