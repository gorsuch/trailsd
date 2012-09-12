require 'spec_helper'

describe Trailsd::Trail do
  context 'validations' do
    let(:trail) { Trailsd::Trail.new }

    it 'requires a name'
    it 'requires a subdomain'
    it 'requires a room'
  end
end
