require 'pp'
require 'gems'

# Retrieve your API key using HTTP basic authentication.
Gems.configure do |config|
  config.username = 'your email'
  config.password = 'your password'
end
pp Gems.api_key # => your api token
