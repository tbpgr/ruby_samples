require "gviz"

sexagenary_cycle = %w(子 丑 寅 卯 辰 巳 午 未 申 酉 戌 亥)
layouts = %i(circo dot fdp neato osage patchwork sfdp twopi)

layouts.each do |layout|
  Graph do
    global layout: layout, label:"sexagenary_#{layout}", fontsize:20, size:15, overlap:false
    nodes fontname:'MS GOTHIC', colorscheme: :paired12, style: :filled

    sexagenary_cycle.each_with_index do |e, i|
      edge "eto_#{i}"
      node :"#{i}", { label: e, fillcolor: i%12}
    end
    node :"eto", { label: '干支', fillcolor: :white }
    node :"0", { label: sexagenary_cycle.first, fillcolor: 1 }
    node :"11", { label: sexagenary_cycle.last, fillcolor: 12 }

    save :"sexagenary_#{layout}", :png
  end
end
