require 'sinatra/base'

module Trailsd
  class Web < Sinatra::Base
    get '/health' do
      'ok'
    end

    get '/trails' do
      Trail.all_as_json
    end
  end
end
