require 'pp'
require 'strscan'

class RubocopWarningParseError < StandardError; end
class RubocopWarning
  attr_accessor :file, :type, :row, :column, :error
end

rubocop_messag = ARGV.first
s = StringScanner.new(rubocop_messag)
file = ''

rubocop_warnings = []
rw = RubocopWarning.new

row_line_count = 0
until s.eos?
  case
  when s.scan(%r{== (?<file>.*) ==\n})
    file = s[:file]
  when s.scan(%r{(?<type>[CEFRW]): +})
    rw.type = s[:type]
  when s.scan(%r{(?<row_or_column>\d+):( )+})
    if row_line_count == 0
      rw.row = s[:row_or_column]
      row_line_count = 1
    else
      rw.column = s[:row_or_column]
      row_line_count = 0
    end
  when s.scan(%r{(?<error>.*)\n})
    rw.error = s[:error]
    rw.file = file
    rubocop_warnings << rw if rw.type
    rw = RubocopWarning.new
  else
    fail RubocopWarningParseError, 'parse error'
  end
end

pp rubocop_warnings
