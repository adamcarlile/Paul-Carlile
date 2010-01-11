require 'spec_helper'

describe Callout do

  describe 'Validation' do 
    it 'should create sucessfully and be valid' do
      Factory(:callout).should be_valid
    end
  end

end
