require 'gviz'
require 'date'

lorem_ipsum = <<-EOS
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit, nam.
Aliquam, hic tempora iure quibusdam voluptatibus natus perferendis maiores veritatis.
Doloribus dignissimos odio deleniti dolorum unde doloremque ex eaque voluptates.
Ea placeat dolor quam provident distinctio voluptatibus, fuga ut incidunt.
Ea, reiciendis repudiandae magnam aliquam eum debitis aliquid atque maiores.
EOS

lorem_ipsum = lorem_ipsum.gsub(/[\n,\.]/, '').split(' ')
loerm_samples = lorem_ipsum.sample(9).map(&:to_sym)

shapes = %w(box polygon ellipse oval circle point egg triangle plaintext diamond trapezium parallelogram house pentagon hexagon septagon octagon doublecircle doubleoctagon tripleoctagon invtriangle invtrapezium invhouse Mdiamond Msquare Mcircle rect rectangle square star none underline note tab folder box3d component promoter cds terminator utr primersite restrictionsite fivepoverhang threepoverhang noverhang assembly signature insulator ribosite rnastab proteasesite proteinstab rpromoter rarrow larrow lpromoter)
shape_samples = shapes.sample(18)

colorschemes = %i(paired10 brbg10 piyg10 prgn10 puor10)
colorscheme = colorschemes.sample

Graph do
  global layout:'neato', overlap:false
  loerm_samples.each_cons(2).with_index(1) do |loerms, i|
    route loerms.first => loerms.last
    loerms.each_with_index do |loerm, j|
      node loerm, {:shape => shape_samples[2 * (i + j - 1)], :colorscheme=> colorscheme,:style => :filled, fillcolor: i%11 }
    end
  end
  route loerm_samples.last => loerm_samples.first
  date_sufix = DateTime.now.strftime("%Y%m%d_%H%M%S")
  save("loerm_#{date_sufix}".to_sym, :png)
end
