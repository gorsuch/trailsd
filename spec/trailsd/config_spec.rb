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

  describe 'database_url' do
    it 'should return the database url' do
      database_url = 'postgres://localhost/test_db'
      ENV.stub(:[]).with('DATABASE_URL') { database_url }
      Trailsd::Config.database_url.should eq(database_url)
    end
  end
end
