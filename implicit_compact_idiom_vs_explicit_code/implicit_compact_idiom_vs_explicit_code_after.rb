# module Kernel
#   def set_default_if_falsy(value, default)
#     value ||= default
#     value
#   end
# end

# ['hoge', nil].each do |text|
#   text = set_default_if_falsy(text, 'default')
#   puts text
# end

require 'tbpgr_utils'


class Object
  def to_bool; !!(self) ;end
end
# class NilClass
#   def to_bool; !!(self) ;end
# end
# class TrueClass
#   def to_bool; !!(self) ;end
# end
# class FalseClass
#   def to_bool; !!(self) ;end
# end

bulk_puts_eval binding, <<-EOS
nil.to_bool
false.to_bool
true.to_bool
"other object".to_bool
EOS
