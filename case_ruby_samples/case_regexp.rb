%w(hoge hige hage tanaka tazaki tadokoro not_match).each do |e|
  case e
  when /h.ge/ then p "match /h.ge/ : #{e}"
  when /^ta/ then p "match /ta/ : #{e}"
  else p "no match : #{e}"
  end
end
