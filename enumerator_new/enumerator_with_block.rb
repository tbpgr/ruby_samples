lorem_ipsums = Enumerator.new do |y|
  lorem_ipsum = <<-EOS
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit, nam.
Aliquam, hic tempora iure quibusdam voluptatibus natus perferendis maiores veritatis.
Doloribus dignissimos odio deleniti dolorum unde doloremque ex eaque voluptates.
Ea placeat dolor quam provident distinctio voluptatibus, fuga ut incidunt.
Ea, reiciendis repudiandae magnam aliquam eum debitis aliquid atque maiores.
  EOS

  lorem_ipsum = lorem_ipsum.gsub(/[\n,\.]/, '').split(' ')
  loop do
    y << lorem_ipsum.shift
    break if lorem_ipsum.empty?
  end
end

print lorem_ipsums, "\n\n"
print lorem_ipsums.to_a, "\n\n"
print lorem_ipsums.take(10), "\n\n"
print lorem_ipsums.map { |e|"「#{e}」" }.take(10), "\n\n"
print lorem_ipsums.take(10).join(', '), "\n\n"
