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
    it 'returns an empty JSON array if there are no trails' do
      Trailsd::Trail.stub(:all_values) { [] }
      get '/trails'
      last_response.should be_ok
      last_response.body.should eq('[]')
    end

    it 'returns an array of values if there are trails' do
      values = [{"id" => 1, "a" => "b"}]
      Trailsd::Trail.stub(:all_values) { values }
      get '/trails'
      last_response.should be_ok
      last_response.body.should eq(values.to_json)
    end
  end

  context 'POST /callbacks/cloudmailin'
end
