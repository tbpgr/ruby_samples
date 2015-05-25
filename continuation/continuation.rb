require 'continuation'

def pattern1
  c = nil
  i = 0
  puts callcc { |cont|c = cont; true }
  puts "pattern1: #{i}"
  i += 1
  return if i > 10
  puts c.call(false)
end

def pattern2(ary)
  ret = callcc do |cont|
    ary.each do |each_ary|
      each_ary.each do |e|
        print e
        cont.call(:exist_c) if e == 'c'
      end
      puts '@@@@@@@@@@@ pattern2'
    end
    :not_found_c
  end
  puts
  puts ret
end

pattern1
pattern2([[*1..5], [*?a..?f]])
pattern2([[*1..5], [*?a..?b]])
