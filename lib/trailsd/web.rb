require 'sinatra/base'

module Trailsd
  class Web < Sinatra::Base
    get '/health' do
      'ok'
    end
  end
end
