require_relative "room"

class Hotel
  def initialize(name, capacities)
    @name = name
    @rooms = {}

    capacities.each do |room_name, capacity|
      @rooms[room_name] = Room.new(capacity)
    end
  end

  def name 
    @name.split(" ").map(&:capitalize).join(" ")
  end

  def rooms
    @rooms
  end

  def room_exists?(room_name)
    @rooms.keys.include?(room_name)
  end

  def check_in(person, room_name)
    if self.room_exists?(room_name)
      if @rooms[room_name].add_occupant(person)
        puts "check in successful"
      else
        puts "sorry, room is full"
      end
    else
      puts "sorry, room does not exist"
    end
  end
end
