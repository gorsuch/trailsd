require 'spec_helper'

describe Trailsd::Trail do
  context 'validations' do
    let(:trail) { Trailsd::Trail.new }

    it 'requires an api_key'
    it 'requires a name'
    it 'requires a subdomain'
    it 'requires a room'
  end

  context 'all_as_json' do
    before(:each) do
      Trailsd::Trail.delete
    end

    it 'returns and empty json array' do
      Trailsd::Trail.all_as_json.should eq('[]')
    end
  end
end
