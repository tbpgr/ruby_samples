require 'thor'
class SampleCLI < Thor
  desc "command1 usage", "command1 desc"
  long_desc "long desc"
  def command1(name)
    puts "command1 #{name}"
  end
end

SampleCLI.start(ARGV)
