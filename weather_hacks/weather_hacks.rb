require 'net/http'
require 'uri'
require 'json'

uri = URI.parse('http://weather.livedoor.com/forecast/webservice/json/v1?city=130010')
json = Net::HTTP.get(uri)
result = JSON.parse(json)
print result['title'], "\n"
print result['link'], "\n"
print "予報の発表日時:#{result['publicTime']}", "\n"
result['forecasts'].each do |forecast|
  print "--------------------"
  print "予報日:#{forecast['dateLabel']}", "\n"
  print "天気:#{forecast['telop']}", "\n"
  print "最低気温:#{forecast['temperature']['min']}", "\n"
  print "最高気温:#{forecast['temperature']['max']}", "\n"
end
