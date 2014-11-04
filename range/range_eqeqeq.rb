require 'tbpgr_utils'

[:include?, :member?, :===].each do |m|
p "*** Range##{m} ***"
  bulk_puts_eval binding, <<-EOS
(2..5).send(m, 2)
(2..5).send(m, 5)
(2..5).send(m, 6)
  EOS
end


[*'a'..'z'].shuffle.take(10).each do |x|
  print "#{x} in "
  case x
    when ('a'..'f')
      p 'a to f'
    when ('g'..'i')
      p 'g to i'
    else
      p 'other'
  end
end

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
