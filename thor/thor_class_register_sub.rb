require 'thor'
class SubCommand < Thor
  desc "command2 usage", "command2 desc"
  def command2(name)
    puts "command2 #{name}"
  end

  desc "command3 usage", "command3 desc"
  def command3(name)
    puts "command3 #{name}"
  end
end

# Thor::Group は定義したコマンドを上から順にすべて実行する
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
