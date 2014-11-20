(1..10).each do |e|
  case e
  when 1..3 then p "match 1..3 : #{e}"
  when 4..6 then p "match 4..6 : #{e}"
  when 7..9 then p "match 7..9 : #{e}"
  else p "no match : #{e}"
  end
end
