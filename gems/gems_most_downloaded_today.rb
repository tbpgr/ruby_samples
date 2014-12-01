require 'pp'
require 'gems'

pp Gems.most_downloaded_today.take(2).map { |e|"gem_id #{e[0]['rubygem_id']}:downloads #{e.last}"}
