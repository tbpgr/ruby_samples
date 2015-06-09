require "tempfile"
tmp = Tempfile.open("tmp")
puts tmp.path
puts File.open(tmp.path, 'w') { |f|f.puts '!test!' }
puts File.read(tmp.path)
sleep 2
