%w(hoge hige hage not_hoge).each do |e|
  case e
  when 'hoge' then p "match hoge : #{e}"
  when 'hige' then p "match hige : #{e}"
  when 'hage' then p "match hage : #{e}"
  else p "no match : #{e}"
  end
end
