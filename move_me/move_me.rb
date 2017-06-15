class MoveMe

  COMPASS = %i[N E S W]
  # look up array rotate
  attr_reader :x_coord, :y_coord, :direction

  def initialize(x_coord, y_coord, direction)
    @x_coord, @y_coord, @direction = [x_coord, y_coord, direction]
  end

  def move(direction_of_travel)
    if direction_of_travel == :G
      # updated_value = instance_variable_get(name_of_coordinate_to_change) + additive
      # instance_variable_set(name_of_coordinate_to_change, updated_value)
      name_of_coordinate_to_change = name_of_coordinate_to_change + additive
    else
      @direction = clockwise_move?(direction_of_travel) ? next_clockwise_direction : next_anticlockwise_direction
    end
  end

  private

  def additive
    positive_direction? ? 1 : -1
  end

  def name_of_coordinate_to_change
    vertical_plane? ? @y_coord : @x_coord
  end

  def vertical_plane?
    [:S,:N].include?(direction)
  end

  def positive_direction?
    [:N,:E].include?(direction)
  end

  def clockwise_move?(direction_of_travel)
    :R == direction_of_travel
  end

  def next_clockwise_direction
    index = COMPASS.index(direction)
    index >= COMPASS.length ? COMPASS[0] : COMPASS[index + 1]
  end

  def next_anticlockwise_direction
    index = COMPASS.index(direction)
    index <= 0 ? COMPASS[COMPASS.length - 1] : COMPASS[index - 1]
  end
end
