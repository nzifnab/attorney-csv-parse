require 'csv'

# simple destination assuming all rows have the same fields
class CsvDestination
  attr_reader :output_file

  def initialize
    @output_file = File.join(ENV['PROJECT_ROOT'], 'output', 'attorneys.csv')
  end

  def write(row)
    @csv ||= CSV.open(output_file, 'w')
    unless @headers_written
      @headers_written = true
      @csv << row.keys
    end
    @csv << row.values
  end

  def close
    @csv.close
  end
end
