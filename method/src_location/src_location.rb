require 'tbpgr_utils'

module Hogeable
  def hogeable
    "hogeable"
  end
end

class ShuffleString < String
  include Hogeable

  def shuffle
    chars.shuffle.join('')
  end

  define_method :sample do
    chars.sample
  end

  # override
  def upcase
    downcase
  end

  eval 'def hoge;print "hoge";end'
end

ss = ShuffleString.new('hoge')
def ss.hage
  "hage"
end
10.times {print ss.shuffle, "\n"}
10.times {print ss.sample, "\n"}
puts ss.hoge
puts ss.hage

bulk_puts_eval binding, <<-EOS
ss.method(:shuffle).owner
ss.method(:shuffle).source_location
ss.method(:sample).owner
ss.method(:sample).source_location
ss.method(:upcase).owner
ss.method(:upcase).source_location
ss.method(:downcase).owner
ss.method(:downcase).source_location
ss.method(:hoge).owner
ss.method(:hoge).source_location
ss.method(:hage).owner
ss.method(:hage).source_location
ss.method(:hogeable).owner
ss.method(:hogeable).source_location
[[]].method(:to_table).owner
[[]].method(:to_table).source_location
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval
to_table

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils
