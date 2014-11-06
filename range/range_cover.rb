require 'tbpgr_utils'
require 'date'
require 'time'

def call_method_with_begin_rescue
  yield
rescue => e
  e.message
end

bulk_puts_eval binding, <<-EOS
(1.1..2.3).include?(1.1)
(1.1..2.3).include?(1.555)
(1.1..2.3).cover?(1.1)
(1.1..2.3).cover?(1.555)
('b'..'d').include?('d')
('b'..'d').include?('ba')
('b'..'d').cover?('d')
('b'..'d').cover?('ba')
(Date.new(2014,1,3)..Date.new(2014,1,5)).include?(Date.new(2014,1,5))
call_method_with_begin_rescue { (Time.new(2014,1,3)..Time.new(2014,1,5)).include?(Time.new(2014,1,4,10,10,10)) }
(Date.new(2014,1,3)..Date.new(2014,1,5)).cover?(Date.new(2014,1,5))
(Time.new(2014,1,3)..Time.new(2014,1,5)).cover?(Time.new(2014,1,4,10,10,10))
EOS