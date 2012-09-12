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
    it 'returns trails' do
      Trailsd::Trail.should_receive(:all_as_json) { "[]" }
      get '/trails'
      last_response.should be_ok
      last_response.body.should eq('[]')
    end
  end
end
