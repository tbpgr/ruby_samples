require 'gviz'

Graph do
  ellipse :ellipse11, x: 1, y: 1, label: :ellipse11
  ellipse :ellipse33, x: 3, y: 3, label: :ellipse33
  circle :circle13, x: 1, y: 3 , r: 0.75, label: :circle13
  circle :circle31, x: 3, y: 1 , r: 0.75, label: :circle31
  square :square15, x: 1, y: 5 , label: :square15
  square :square35, x: 3, y: 5 , label: :square35
  point :point17, x: 1, y: 7
  point :point37, x: 3, y: 7
  line :line1, from: [1, 1], to: [7, 7]
  line :line2, from: [1, 7], to: [7, 1]
  route ellipse11: :circle31
  route circle31: :ellipse33
  route ellipse33: :square35
  route square35: :square15
  route square15: :circle13
  route circle13: :ellipse11
  save(:draw, :png)
end
