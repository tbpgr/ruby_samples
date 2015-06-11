require 'yaml'

hoges = %w(hoge hige hage)
hoges_yaml = YAML.dump(hoges)

puts hoges_yaml
print YAML.load(hoges_yaml), "\n"
