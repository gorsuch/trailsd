module Trailsd
  class Trail < Sequel::Model
    def self.all_values
      all.map(&:values)
    end

    def validate
      super
    end
  end
end
