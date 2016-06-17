require 'spec_helper'

describe Parking do
  before do
    @parking = Parking.new(address: 'Nose')
    @parking.save
  end

  subject { @parking }

  its(:created_at) { should_not be_nil }
end
