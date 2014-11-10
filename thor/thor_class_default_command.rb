require 'thor'
class SampleCLI < Thor
  # default_command :command1
  desc "command1 usage", "command1 desc"
  def command1(name = 'default')
    puts "command1 #{name}"
  end

  desc "command2 usage", "command2 desc"
  def command2(name)
    puts "command2 #{name}"
  end
end

SampleCLI.start(ARGV)
