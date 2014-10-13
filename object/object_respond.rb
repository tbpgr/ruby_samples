require 'tbpgr_utils'

class Template
  def main
    start
    private_start
    template_method
    finish
  end

  def start
    puts "start"
  end

  def template_method
    raise NotImplementedError, "hoge"
  end

  def finish
    puts "finish"
  end

  private

  def private_start
    puts "private_start_start"
  end
end

class Hoge < Template
  include Template
end

class Hige < Template
  include Template

  def template_method
    "template_method"
  end
end

hoge = Hoge.new
hige = Hige.new

bulk_puts_eval binding, <<-EOS
hoge.respond_to?(:start)
hoge.respond_to?(:start, true)
hoge.respond_to?(:private_start)
hoge.respond_to?(:private_start, true)
hoge.respond_to?(:template_method)
hoge.respond_to?(:template_method, true)
hige.respond_to?(:start)
hige.respond_to?(:start, true)
hige.respond_to?(:private_start)
hige.respond_to?(:private_start, true)
hige.respond_to?(:template_method)
hige.respond_to?(:template_method, true)
File.respond_to?(:lchmod)
EOS

__END__
下記はTbpgrUtils gemの機能
bulk_puts_eval

https://rubygems.org/gems/tbpgr_utils
https://github.com/tbpgr/tbpgr_utils