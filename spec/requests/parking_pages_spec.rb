require 'spec_helper'

describe 'Parking pages' do
  subject { page }

  describe 'Parking Page' do
    let(:parking) { FactoryGirl.create(:parking) }
    before { visit parking_path(parking) }

    it { should have_content(parking.address) }
  end
end
