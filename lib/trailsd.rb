require 'json'
require 'sequel'

module Trailsd
end

require 'trailsd/config'

DB = Sequel.connect Trailsd::Config.database_url

DB.create_table :trails do
  primary_key :id
  String :api_key
  String :name
  String :subdomain
  String :room
  String :uuid
end unless DB.table_exists?(:trails)

require 'trailsd/trail'
