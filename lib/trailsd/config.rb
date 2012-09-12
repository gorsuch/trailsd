module Trailsd
  module Config
    extend self

    def env!(key)
      ENV[key] || raise("#{key} was not found in ENV")
    end
  end
end
