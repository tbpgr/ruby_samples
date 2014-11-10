class GroupPlugin < Thor::Group
  desc "hoge1"
  def hoge1
    puts "hoge1"
  end

  desc "hoge2"
  def hoge2
    puts "hoge2"
  end
end

SampleCLI.start(ARGV)
