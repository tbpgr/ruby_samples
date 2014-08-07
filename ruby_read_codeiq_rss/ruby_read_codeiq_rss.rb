require 'rss'

class RSS::Rss::Channel::Item
  def to_s
    <<-EOS
=================================
出題者   #{@category.first.content}
タイトル #{@title}
詳細     #{@description}
=================================
    EOS
  end
end

url = 'https://codeiq.jp/rss.xml'
rss = RSS::Parser.parse(url)
rss.items
    .sort_by { |e|e.category.content }
    .each { |item|puts item }
