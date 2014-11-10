require 'thor'
class SampleCLI < Thor
  map "CM1" => "command1"

  desc "command1 usage", "command1 desc"
  def command1(name)
    puts "command1 #{name}"
  end
end

SampleCLI.start(ARGV)
