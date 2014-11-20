def fizzbuzz?; ->(v){v % 15 == 0}; end
def buzz?; ->(v){v % 5 == 0}; end
def fizz?; ->(v){v % 3 == 0}; end

(1..30).each do |e|
  case e
  when fizzbuzz? then puts "FizzBuzz"
  when buzz? then puts "Buzz"
  when fizz? then puts "Fizz"
  else p e
  end
end
