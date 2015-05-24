require 'abbrev'
require 'pp'
require 'date'

today = Date.today
weeks = (Date.new(2015, 5, 24)..Date.new(2015, 5, 30)).map { |e|e.strftime('%A') }

pp Abbrev.abbrev(weeks)
__END__
{"Sunday"=>"Sunday",
 "Sunda"=>"Sunday",
 "Sund"=>"Sunday",
 "Sun"=>"Sunday",
 "Su"=>"Sunday",
 "Monday"=>"Monday",
 "Monda"=>"Monday",
 "Mond"=>"Monday",
 "Mon"=>"Monday",
 "Mo"=>"Monday",
 "M"=>"Monday",
 "Tuesday"=>"Tuesday",
 "Tuesda"=>"Tuesday",
 "Tuesd"=>"Tuesday",
 "Tues"=>"Tuesday",
 "Tue"=>"Tuesday",
 "Tu"=>"Tuesday",
 "Wednesday"=>"Wednesday",
 "Wednesda"=>"Wednesday",
 "Wednesd"=>"Wednesday",
 "Wednes"=>"Wednesday",
 "Wedne"=>"Wednesday",
 "Wedn"=>"Wednesday",
 "Wed"=>"Wednesday",
 "We"=>"Wednesday",
 "W"=>"Wednesday",
 "Thursday"=>"Thursday",
 "Thursda"=>"Thursday",
 "Thursd"=>"Thursday",
 "Thurs"=>"Thursday",
 "Thur"=>"Thursday",
 "Thu"=>"Thursday",
 "Th"=>"Thursday",
 "Friday"=>"Friday",
 "Frida"=>"Friday",
 "Frid"=>"Friday",
 "Fri"=>"Friday",
 "Fr"=>"Friday",
 "F"=>"Friday",
 "Saturday"=>"Saturday",
 "Saturda"=>"Saturday",
 "Saturd"=>"Saturday",
 "Satur"=>"Saturday",
 "Satu"=>"Saturday",
 "Sat"=>"Saturday",
 "Sa"=>"Saturday"}
 