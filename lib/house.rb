class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price.delete('$').to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if @price >= 500000
      true
    else
      false
    end
  end

  def rooms_from_category(type)
    @rooms.select do |room|
      room.type == type
    end
  end

  def area
    @rooms.sum do |room|
      room.length * room.width.to_i
    end
  end

  def details
    details = {"price" => @price,
              "address" => @address
              }
  end

  def price_per_square_foot
    pricing = @price.to_f / area.to_f
    pricing.to_f.round(2)
  end

  def rooms_by_category
    cat = {}
    @rooms.each do |room|
      cat[room.type] = rooms_from_category(room.type)
    end
    cat 
  end

end
