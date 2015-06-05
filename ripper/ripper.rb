require 'ripper'
require 'pp'

File.open("./ripper.rb") do |io|
  io.each_line do |line|
    p Ripper.tokenize(line)
  end
end

File.open("./ripper.rb") do |io|
  pp Ripper.sexp(io)
end
