require 'gviz'

Graph do
  node :sample, {
    :color => :red,
    :fontcolor => :darkgreen,
    :style => :filled,
    :fillcolor => :yellow,
    :fontname => 'Impact',
    :fontsize => 40
  }
  route :fromEdge => :toEdge
  edge :fromEdge_toEdge, {
    label: 'edge\'s label'
  }

  %i(
    egg triangle diamond tripleoctagon star
    note tab folder box3d component
  ).each.with_index do |e, i|
    rank_value = i%3==0 ? :min : i%3==1 ? :same : :max
    node e, {:shape => e}
    rank rank_value, e
  end

  node :VirticalRecord, {
    :shape => :record,
    :label => "{ a | b | c }"
  }
  node :HorizontalRecord, {
    :shape => :record,
    :label => " a | b | c "
  }
  node :MixRecord, {
    :shape => :record,
    :label => " d | {e|f} | g "
  }

  save(:attrs, :png)
end
