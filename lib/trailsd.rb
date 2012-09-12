require 'json'
require 'sequel'
require 'tinder'

module Trailsd
end

require 'trailsd/config'

DB = Sequel.connect Trailsd::Config.database_url

DB.create_table :trails do
  primary_key :id
  String :name
  String :subdomain
  String :room
  String :token
  String :uuid
end unless DB.table_exists?(:trails)

require 'trailsd/trail'
