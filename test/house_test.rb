require 'minitest/autorun'
require 'minitest/pride'
require './lib/house'
require './lib/room'
require 'pry'

class HouseTest < Minitest::Test

  def test_it_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_it_starts_with_no_rooms
    house = House.new("$400000", "123 sugar lane")
    assert_equal [], house.rooms
  end

  def test_it_can_add_rooms
    room1 = Room.new(:bedroom, 10, '13')
    room2 = Room.new(:living_room, 15, '12')
    house = House.new("$400000", "123 sugar lane")
    house.add_room(room1)
    house.add_room(room2)

    assert_equal rooms = [room1, room2], house.rooms
  end

  def test_it_knows_if_price_is_above_market
    house = House.new("$400000", "123 sugar lane")
    assert_equal false, house.above_market_average?
  end

  def test_it_return_room_category
    room1 = Room.new(:bedroom, 10, '13')
    room2 = Room.new(:bedroom, 11, '15')
    room3 = Room.new(:living_room, 25, '15')
    room4 = Room.new(:basement, 30, '41')
    house = House.new("$400000", "123 sugar lane")
    house.add_room(room1)
    house.add_room(room2)
    house.add_room(room3)
    house.add_room(room4)

    assert_equal [room1, room2], house.rooms_from_category(:bedroom)
  end

  def test_it_returns_area
    room1 = Room.new(:bedroom, 10, '13')
    room2 = Room.new(:bedroom, 11, '15')
    room3 = Room.new(:living_room, 25, '15')
    room4 = Room.new(:basement, 30, '41')
    house = House.new("$400000", "123 sugar lane")
    house.add_room(room1)
    house.add_room(room2)
    house.add_room(room3)
    house.add_room(room4)

    assert_equal 1900, house.area
  end

  def test_it_can_return_details
    skip
    room1 = Room.new(:bedroom, 10, '13')
    room2 = Room.new(:bedroom, 11, '15')
    room3 = Room.new(:living_room, 25, '15')
    room4 = Room.new(:basement, 30, '41')
    house = House.new("$400000", "123 sugar lane")
    house.add_room(room1)
    house.add_room(room2)
    house.add_room(room3)
    house.add_room(room4)
    assert_equal house, house.details
  end
end
