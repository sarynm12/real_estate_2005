class Room
  attr_reader :type, :length, :width, :painted

  def initialize(type, length, width)
    @type = type
    @length = length
    @width = width
    @painted = false
  end

  def is_painted?
    @painted
  end

  def paint
    @painted = true
  end

end
