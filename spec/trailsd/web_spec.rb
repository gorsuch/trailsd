require 'spec_helper'
require 'trailsd/web'

describe Trailsd::Web do
  include Rack::Test::Methods

  def app
    Trailsd::Web
  end

  context 'GET /health' do
    it 'reports back ok' do
      get '/health'
      last_response.should be_ok
    end
  end

  context 'GET /trails' do
    it 'returns trails'
  end
end
