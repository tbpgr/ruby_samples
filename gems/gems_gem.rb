require 'pp'
require 'gems'

# Return some basic information about rails.
pp Gems.info 'ruboty-megen'

__END__
# Return an array of active gems that match the query.
Gems.search 'cucumber'

# Return all gems that you own.
Gems.gems

# Return all gems owned by Erik Michaels-Ober.
Gems.gems("sferik")

# Submit a gem to RubyGems.org.
Gems.push File.new 'gemcutter-0.2.1.gem'

# Remove a gem from RubyGems.org's index.
# Defaults to the latest version if no version is specified.
Gems.yank 'bills', '0.0.1'

# Update a previously yanked gem back into RubyGems.org's index.
# Defaults to the latest version if no version is specified.
Gems.unyank 'bills', '0.0.1'

# Return an array of version details for coulda.
Gems.versions 'coulda'

# Return the total number of downloads for rails_admin 0.0.1.
# (Defaults to the latest version if no version is specified.)
Gems.total_downloads 'rails_admin', '0.0.1'

# Returns an array containing the top 50 downloaded gem versions for today.
Gems.most_downloaded_today

# Returns an array containing the top 50 downloaded gem versions of all time.
Gems.most_downloaded

# Return the total number of downloads by day for rails_admin 0.0.1.
# (Defaults to the latest version if no version is specified.)
Gems.downloads 'rails_admin', '0.0.1'

# Return the number of downloads by day for coulda 0.6.3 for the past 90 days.
# (Defaults to the latest version if no version is specified.)
Gems.downloads 'coulda', '0.6.3'

# Return the number of downloads by day for coulda 0.6.3 for the past year.
Gems.downloads 'coulda', '0.6.3', Date.today - 365, Date.today

# View all owners of a gem that you own.
Gems.owners 'gemcutter'

# Add an owner to a RubyGem you own, giving that user permission to manage it.
Gems.add_owner 'josh@technicalpickles.com', 'gemcutter'

# Remove a user's permission to manage a RubyGem you own.
Gems.remove_owner 'josh@technicalpickles.com', 'gemcutter'

# Return all the webhooks registered under your account.
Gems.web_hooks

# Add a webhook.
Gems.add_web_hook 'rails', 'http://example.com'

# Remove a webhook.
Gems.remove_web_hook 'rails', 'http://example.com'

# Test fire a webhook.
Gems.fire_web_hook 'rails', 'http://example.com'

# Returns the 50 gems most recently added to RubyGems.org
Gems.latest

# Returns the 50 most recently updated gems
Gems.just_updated

# Retrieve your API key using HTTP basic authentication.
Gems.configure do |config|
  config.username = 'nick@gemcutter.org'
  config.password = 'schwwwwing'
end
Gems.api_key

# Return an array of gem dependency details for all versions of all the given gems.
Gems.dependencies ['rails', 'thor']

# The following methods require authentication.
# By default, we load your API key from ~/.gem/credentials
# You can override this default by specifying a custom API key.
Gems.configure do |config|
  config.key '701243f217cdf23b1370c7b66b65ca97'
end