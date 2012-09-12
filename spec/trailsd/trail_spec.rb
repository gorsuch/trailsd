require 'spec_helper'

describe Trailsd::Trail do
  describe 'validations' do
    let(:trail) { Trailsd::Trail.new }

    it 'requires a token'
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
    before(:each) do
      Trailsd::Trail.destroy
      @trail = Trailsd::Trail.create({ 'token' => '1234', 'name' => 'foo', 'subdomain' => 'foo', 'room' => 'bar', 'uuid' => SecureRandom.hex(20) })
    end

    it 'should call Tinder appropriately' do
      campfire_double = double('campfire')
      Tinder::Campfire.should_receive(:new).with(@trail.subdomain, :token => @trail.token) { campfire_double }
      room_double = double('room')
      campfire_double.should_receive(:find_room_by_name).with(@trail.room) { room_double }
      room_double.should_receive(:paste).with('hello')

      @trail.emit('hello')        
    end
  end
end
