class Matrix
  attr_reader :rows, :columns

  def initialize(str)
    @rows = str.split(/\n/).map { |data| data.split(" ").map(&:to_i) }
    @columns = @rows.transpose
  end

  def saddle_points
    arr = []

    @rows.each_with_index do |row, i|
      row_max = row.max
      row.each_with_index do |row_value, k|
        column_min = @columns[k].min
        arr << [i,k] if row_value == column_min && row_value == row_max
      end
    end
    arr
  end
end
