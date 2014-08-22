require "gviz"
require "colorable"

ltsv_src = File.open('./problems.ltsv', 'r:utf-8') { |f|f.read }
ltsv = ltsv_src.split("\n").map { |line|Hash[line.split("\t").map{ |column| column.split(":", 2)}] }
color = Colorable::Color.new(:black)

def color_index(challengers)
  color_index = challengers.to_i/10
  color_index = 11 if color_index > 11
  color_index
end

Graph do
  global layout: :sfdp, label:"CodeIQ @tbpgr 出題問題", fontsize:60, size:15, overlap:false, fontname:'MS GOTHIC'
  nodes shape: :ellipse, fontname:'MS GOTHIC', fontsize:10, style: :filled, colorscheme: :paired12
  ltsv.sort_by { |e|e['challengers'].to_i }.reverse.each_cons(2) do |p1, p2|
    route p1['no'].to_sym => p2['no']
    magnification1 = p1['challengers'].to_i/2
    magnification2 = p2['challengers'].to_i/2
    node p1['no'].to_sym, { label: "#{p1['title']}(#{p1['challengers']})",
        fontsize: 20*magnification1,
        width: 2*magnification1,
        height: 2*magnification1,
        fillcolor: color_index(p1['challengers'])
    }
    node p2['no'].to_sym, { label: "#{p2['title']}(#{p2['challengers']})",
        fontsize: 20*magnification2,
        width: 2*magnification2,
        height: 2*magnification2,
        fillcolor: color_index(p2['challengers'])
    }
  end
  save :"codeiq_problems_sort_challengers", :png
end
