require 'thor'
require './thor_class_register_sub'
class SampleCLI < Thor
  register(SubCommand, "sub", "sub usage override", "sub desc override")
  register(GroupPlugin, "group", "group usage override", "group desc override")

  desc "command1 usage", "command1 desc"
  def command1(name = 'default')
    puts "command1 #{name}"
  end
end

SampleCLI.start(ARGV)
