require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require 'pry'

class RoomTest < Minitest::Test

  def test_it_exists
    room_1 = Room.new(:bedroom, 10, '13')
    assert_instance_of Room, room_1
  end

  def test_it_has_length
    room_1 = Room.new(:bedroom, 10, '13')
    assert_equal 10, room_1.length
  end

  def test_it_has_width
    room_1 = Room.new(:bedroom, 10, '13')
    assert_equal '13', room_1.width 
  end

  def test_it_starts_with_no_paint
    room_1 = Room.new(:bedroom, 10, '13')
    assert_equal false, room_1.is_painted?
  end

  def test_it_can_be_painted
    room_1 = Room.new(:bedroom, 10, '13')
    room_1.paint
    assert_equal true, room_1.is_painted?
  end

end
