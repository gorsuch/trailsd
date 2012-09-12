require 'json'
require 'sequel'

module Trailsd
end

DB = Sequel.connect ENV['DATABASE_URL']

DB.create_table :trails do
  primary_key :id
  String :name
  String :subdomain
  String :room
end unless DB.table_exists?(:trails)

require 'trailsd/trail'
