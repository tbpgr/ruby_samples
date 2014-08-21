class HQ9Plus
  def initialize(file = nil)
    @src = File.read(file) if file
    @i = 0
  end

  def run
    @src.each_char do |char|
      case char
      when 'H'
        puts hello
      when 'Q'
        puts quine
      # original
      when 'S'
        puts show
      when '9'
        puts nine
      when '+'
        increment
      end
    end
  end

  def hello
    'Hello, world!'
  end

  def quine
    @src
  end

  def show
    @i
  end

  def nine
    99.downto(0).each_with_object([]) do |i, memo|
      action = 'Take one down and pass it around'
      case i
      when 0
        before = 'No more bottles'
        after = '99 bottles'
        action = 'Go to the store and buy some more'
      when 1
        before = '1 bottle'
        after = 'no more bottles'
      when 2
        before = '2 bottles'
        after = '1 bottle'
      else
        before = "#{i} bottles"
        after = "#{i - 1} bottles"
      end

      record =<<-EOS
#{before} of beer on the wall, #{before.downcase} of beer.
#{action}, #{after} of beer on the wall.
      EOS
      memo << record.chop
    end.join("\n") + "\n"
  end

  def increment
    @i += 1
  end
end

exit(1) if ARGV.size == 0
file = ARGV[0]
exit(1) unless File.exist?(file)

HQ9Plus.new(file).run
exit(0)
