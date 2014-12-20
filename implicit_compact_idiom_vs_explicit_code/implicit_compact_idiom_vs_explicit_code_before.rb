['hoge', nil].each do |text|
  text ||= 'default'
  puts text
end

require 'tbpgr_utils'

bulk_puts_eval binding, <<-EOS
!!(nil)
!!(false)
!!(true)
!!("other object")
EOS
