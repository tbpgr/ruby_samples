require 'thor'
class SampleCLI < Thor
  desc "command1 usage", "command1 desc"
  def command1(name)
    puts "command1 #{name}"
  end

  desc "command2 usage", "command2 desc"
  def command2(name)
    puts "command2 #{name}"
  end
end

SampleCLI.start(ARGV)
