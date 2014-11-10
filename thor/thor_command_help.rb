require 'thor'
class SampleCLI < Thor
  desc "command1 usage", "command1 desc"
  def command1(name)
    puts "command1 #{name}"
  end

  # command_help Thor::Shell::HTML.new, "command1"

  desc "command2 usage", "command2 desc"
  def command2(name)
    puts "command2 #{name}"
  end

  # command_help Thor::Shell::Basic.new, "command2"
end

SampleCLI.start(ARGV, shell: Thor::Shell::HTML.new)
