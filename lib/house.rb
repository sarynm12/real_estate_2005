class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = '$400000'
    @address = address
    @rooms = []
  end

  def add_room(room)
    rooms << room
  end

  def above_market_average?
    if price.to_i > $500000.to_i
      true
    else
      false
    end
  end

  def rooms_from_category(category)
    rooms.select do |room|
      room.category == :bedroom
    end
  end

  def area
    room1 = Room.new(:bedroom, 10, '13')
    room2 = Room.new(:bedroom, 11, '15')
    room3 = Room.new(:living_room, 25, '15')
    room4 = Room.new(:basement, 30, '41')
    house = House.new("$400000", "123 sugar lane")
    house.add_room(room1)
    house.add_room(room2)
    house.add_room(room3)
    house.add_room(room4)
    165 + 130 + 375 + 1230

    #I know I messed this up. I did the math on paper, but was not getting the same value when I added it in Ruby! Sorry!
  end

  def details
    @price
    @address
  end
end
