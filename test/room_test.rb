require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require 'pry'

class RoomTest < Minitest::Test

  def test_it_exists
    room = Room.new(:bedroom, 10, '13')
    assert_instance_of Room, room
  end

  def test_it_has_a_category
    room = Room.new(:bedroom, 10, '13')
    room.category
    assert_equal :bedroom, room.category
  end

  def test_it_can_get_area
    room1 = Room.new(:bedroom, 10, '13')
    room2 = Room.new(:living_room, 15, '12')
    assert_equal 130, room1.area
    assert_equal 120, room2.area
  end

  def test_it_knows_if_painted
    room = Room.new(:bedroom, 10, '13')

    assert_equal false, room.is_painted?
  end


end



# ## Iteration 1
#
# Start with the three existing tests, and then use TDD to create a `Room` class that responds to the following interaction pattern:

#
# pry(main)> room.is_painted?
# #=> false
#
# pry(main)> room.paint
#
# pry(main)> room.is_painted?
# #=> true



## Iteration 2

# Use TDD to create a `House` class that responds to the following interaction pattern:
#     * Where you see something like `#<House:0x00007fccd30375f8...>`, this is shorthand for a full house object with that object identifier - we have replaced any attributes with `...` for readability.
#
# ```ruby
# pry(main)> require './lib/room'
# #=> true
#
# pry(main)> require './lib/house'
# #=> true
#
# pry(main)> house = House.new("$400000", "123 sugar lane")
# #=> #<House:0x00007fccd30375f8...>
#
# pry(main)> house.price
# #=> 400000
#
# pry(main)> house.address
# #=> "123 sugar lane"
#
# pry(main)> house.rooms
# #=> []
#
# pry(main)> room_1 = Room.new(:bedroom, 10, '13')
# #=> #<Room:0x00007fccd29b5720...>
#
# pry(main)> room_2 = Room.new(:bedroom, 11, '15')
# #=> #<Room:0x00007fccd2985f48...>
#
# pry(main)> house.add_room(room_1)
#
# pry(main)> house.add_room(room_2)
#
# pry(main)> house.rooms
# #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>]
# ```
