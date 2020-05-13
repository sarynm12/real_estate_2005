class Room
  attr_reader :category, :length, :width

  def initialize(category, length, width)
    @category = category
    @length = 10
    @width = width
  end

  def area
    @length * @width.to_i
  end

  def paint
    color = color
  end

  def is_painted?
    paint = false
  end
end
