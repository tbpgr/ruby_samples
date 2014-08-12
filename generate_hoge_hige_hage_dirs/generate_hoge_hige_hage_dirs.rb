dirname_bases = %w{ hoge hige hage }
prefixes = [*0..9]
sufixes = [*0..9]

30.times do
  dir = "#{prefixes.sample}_#{dirname_bases.sample}_#{sufixes.sample}"
  next if Dir.exist?(dir)
  Dir.mkdir(dir)
end
