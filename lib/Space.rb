class Space

  attr_reader(:x_coord, :y_coord)

  def initialize(x_coord, y_coord)
    @x_coord = x_coord
    @y_coord = y_coord
  end

  def Space.create(x_coord, y_coord)
    new_space = Space.new(x_coord, y_coord)
  end
end
