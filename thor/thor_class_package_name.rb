require 'thor'
class SampleCLI < Thor
  package_name "package_name"
end

SampleCLI.start(ARGV)
