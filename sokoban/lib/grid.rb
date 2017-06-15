class Grid

  attr_reader :width, :height
  attr_accessor :cells

  def initialize(width=19, height=16)
    @width = width
    @height = height
    @cells = Array.new(width) { Array.new(height) }
  end

  def to_s
    make_walls
    result = ""
    @cells.each_with_index do |row, i|
      row.each do |col|
        result += col
      end
      result += "\n" unless i == 2
    end
    result
  end

  def make_walls
    new_cells = @cells.each_with_index.map do |row, i|
      row.each_with_index.map do |column, j|
        if i == 0 || i == (width - 1) || j == 0 || j == (height - 1)
          @cells[i][j] = "#"
        else
          @cells[i][j] = ' '
        end
      end
    end
    @cells = new_cells
  end
end
