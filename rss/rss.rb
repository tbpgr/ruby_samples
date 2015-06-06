require 'rss'
url = 'http://tbpgr.hatenablog.com/rss'
rss = RSS::Parser.parse(url)
ret = rss.items.take(2)

puts ret