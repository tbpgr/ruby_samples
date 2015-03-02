'a'.upto('ba') { |str|print str }
# => abcdefghijklmnopqrstuvwxyzaaabacadaeafagahaiajakalamanaoapaqarasatauavawaxayazba
puts
puts ("a" .. "za").to_a == ('a'.upto('za')).to_a
# => true

'乱'.upto('亮') { |str|print str }
# => 乱乲乳乴乵乶乷乸乹乺乻乼乽乾乿亀亁亂亃亄亅了亇予争亊事二亍于亏亐云互亓五井亖亗亘亙亚些亜亝亞亟亠亡亢亣交亥亦产亨亩亪享京亭亮
