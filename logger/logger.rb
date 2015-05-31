require 'logger'
log = Logger.new(STDOUT)

[Logger::DEBUG, Logger::INFO, Logger::WARN, Logger::ERROR].each do |log_level|
  log.level = log_level
  puts "Log LEVEL = #{log_level}"
  log.debug("Created logger")
  log.info("Program started")
  log.warn("Nothing to do!")
  log.error("Error!")
end
