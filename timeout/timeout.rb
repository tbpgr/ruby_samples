require 'timeout'

begin
  timeout(0.5){
    loop {
      v = rand
      puts v
      sleep(v)
    }
  }
rescue Timeout::Error
  puts "timeout"
end
