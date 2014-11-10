require 'thor'
class SampleCLI < Thor
  desc "command1 usage", "command1 desc"
  options opt1: :string, opt2: :array
  def command1(name)
    print options, "\n"
    puts "command1 #{name}"
  end
end

SampleCLI.start(ARGV)
