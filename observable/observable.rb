require 'observer'

class Newcomer
  include Observable
  attr_reader :name, :motivation

  def initialize(name, manager)
    @name = name
    @motivation = 100
    add_observer(manager)
  end

  def action(description)
    before = "(´・ω・) #{@name}"
    puts "#{before}: #{description} しているよ"
    changed
    notify_observers(name, description)
    @motivation -= 10
    puts "(♯・ω・)ﾋﾟｷﾋﾟｷ"
    puts "辞めます" if (@motivation < 1)
  end
end

class Micromanager
  attr_reader :name
  RAMDOM_MESSAGES = %w(それは間違っている！ 本当にできるのか？ 勝手なことをするな！ どうせ君は間違っているだろう 俺様が教えてしんぜよう)

  def initialize(name)
    @name = name
  end

  def update(subordinate, description)
    by = "(｀・ω・)ﾄﾞﾔｧ #{@name}"
    puts "#{by}: '#{description}' している？"
    puts "#{by}: #{subordinate} くん、 #{RAMDOM_MESSAGES.sample}"
  end
end
newcomer = Newcomer.new('優秀新人', Micromanager.new('マイクロ先輩'))
actions = %w(
  プログラムを実装
  業務を改善
  共通処理を作成
  自動化
  スニペットを作成
  Gitを導入
  ペアプロ
  便利ツールを作成
  ナレッジを共有
  社内政治を排除
)

actions.each do |action|
  newcomer.action(action)
  puts "#{newcomer.name} くんのモチべ: #{newcomer.motivation}"
end
