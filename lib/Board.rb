class Board

  attr_reader(:row, :column)

  def initialize(row, column)
    @row = row
    @column = column
    @spaces = []

    (1..row).each do |x|
      (1..column).each do |y|
        @spaces << Space.create(x, y)
      end
    end
  end

  def spaces
    @spaces
  end

  def Board.create(row, column)
    new_board = Board.new(row, column)
  end
end
