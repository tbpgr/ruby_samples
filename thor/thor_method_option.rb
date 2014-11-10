require 'thor'
class SampleCLI < Thor
  desc "command1 usage", "command1 desc"
  method_option "opt", desc: 'ops'
  def command1(name)
    print options['opt'], "\n"
    puts "command1 #{name}"
  end

  desc "command2 usage", "command2 desc"
  option "opt", required: true
  def command2(name)
    print options['opt'], "\n"
    puts "command2 #{name}"
  end

  desc "command3 usage", "command3 desc"
  option "opt", aliases: "o"
  def command3(name)
    print options['opt'], "\n"
    puts "command3 #{name}"
  end

  desc "command4 usage", "command4 desc"
  option "opt", type: :string
  def command4(name)
    print options['opt'], "\n"
    puts "command4 #{name}"
  end

  desc "command5 usage", "command5 desc"
  option "opt", type: :array
  def command5(name)
    print options['opt'], "\n"
    puts "command5 #{name}"
  end

  desc "command6 usage", "command6 desc"
  option "opt", banner: "banner"
  def command6(name)
    print options['opt'], "\n"
    puts "command6 #{name}"
  end

  desc "command7 usage", "command7 desc"
  option "opt", hide: true
  def command7(name)
    print options['opt'], "\n"
    puts "command7 #{name}"
  end
end

SampleCLI.start(ARGV)
