require "gviz"
require 'open-uri'
require 'json'
require 'uri'
require 'fileutils'

q = '地獄のミサワ'
results = []

8.times { |i|
  uri = URI.escape("http://ajax.googleapis.com/ajax/services/search/images?q=#{q}&v=1.0&hl=ja&safe=off&start=#{i}")
  images = open(uri)
  results += JSON.parse(images.read)['responseData']['results']
}

results.delete_if { |e|File.extname(URI.parse(e['url']).path).empty? }
FileUtils.mkdir_p('images') unless FileTest.exist?('images')

def extension_from_url(url)
  extension = File.extname(URI.parse(url).path)
  extension == '.jpeg' ? '.jpg' : extension
end

filterd_results = results.shuffle.take(4)
filterd_results.each_with_index do |record, i|
  open(record['url']) do |image|
    extension = extension_from_url(record['url'])
    File.open("./images/#{i}#{extension}", 'wb') do |f|
      f.write image.read
    end
  end
end

random_size = []
records_size = filterd_results.size

Graph do
  global layout: :neato, label:"Google 画像検索", fontsize:60, size:15, overlap:false, fontname:'MS GOTHIC'
  nodes shape: :none

  records_size.times do |i|
    extension = extension_from_url(filterd_results[i]['url'])
    node :"#{i}", image: "./images/#{i}#{extension}", width: 1
  end

  save :"google_image", :png
end
