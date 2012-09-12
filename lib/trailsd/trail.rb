module Trailsd
  class Trail < Sequel::Model
    def self.all_as_json
      all.to_json
    end

    def validate
      super
    end
  end
end
