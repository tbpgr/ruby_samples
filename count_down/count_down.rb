second = ARGV[0] || 10
second = Integer(second)
second.times do
  system("clear")
  system("figlet #{Time.now.strftime("%H:%M:%S")}")
  sleep 1
end
system("clear")
system("figlet good night")