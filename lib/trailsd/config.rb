module Trailsd
  module Config
    extend self

    def env!(key)
      ENV[key] || raise("#{key} was not found in ENV")
    end

    def database_url
      env!('DATABASE_URL')
    end
  end
end
