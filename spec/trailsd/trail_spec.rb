require 'spec_helper'

describe Trailsd::Trail do
  describe 'validations' do
    let(:trail) { Trailsd::Trail.new }

    it 'requires an api_key'
    it 'requires a name'
    it 'requires a subdomain'
    it 'requires a room'
    it 'requires a uuid'
  end

  describe 'all_values' do
    before(:each) do
      Trailsd::Trail.delete
    end

    it 'returns and empty array' do
      Trailsd::Trail.all_values.should eq([])
    end

    it 'should only return safe values'
  end

  describe 'emit' do

  end
end
