module Trailsd
  class Trail < Sequel::Model
    def self.all_values
      all.map(&:values)
    end

    def emit(s)
      campfire = Tinder::Campfire.new(self.subdomain, :token => self.token)
      room = campfire.find_room_by_name(self.room)
      room.paste(s)
    end

    def validate
      super
    end
  end
end
