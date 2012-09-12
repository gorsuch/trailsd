require 'spec_helper'

describe Trailsd::Config do
  describe 'env!' do
    it 'should return the value of ENV' do
      ENV.stub(:[]).with('test') { 'foo' }
      Trailsd::Config.env!('test').should eq('foo')
    end

    it 'should raise an exception if the value does not exist in ENV' do
      lambda { Trailsd::Config.env!('foo') }.should raise_error
    end
  end
end
