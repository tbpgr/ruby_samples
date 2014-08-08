words = ARGV[0]
connect_count = ARGV[1]
output_count = ARGV[2]

class FileNotFoundException < StandardError; end

class BrainConnector
  def initialize
    validate_file
    @words = File.read(ARGV[0]).each_line.map { |e|e.chomp }
    @connect_count = Integer(ARGV[1])
    @output_count = Integer(ARGV[2])
  end

  def connect_brain
    @output_count.times { puts @words.shuffle.first(@connect_count).join(',') }
  end

  private

  def validate_file
    file = ARGV[0]
    fail FileNotFoundException, "not found #{file}" unless File.exist?(file)
  end
end

begin
  bc = BrainConnector.new
  bc.connect_brain
  exit
rescue => e
  puts e.message
  exit(false)
end

__END__
call sample

$ ruby brain_connect.rb words 3 4
joke,enjoy,code
joke,Java,code
difficult,code,programming
golf,code,easy
