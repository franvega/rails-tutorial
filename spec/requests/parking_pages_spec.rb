require 'spec_helper'

describe 'Parking pages' do
  subject { page }

  describe 'Parking Page' do
    let(:parking) { FactoryGirl.create(:parking) }
    before { visit parking_path(parking) }

    it { should have_content(parking.address) }
  end

  describe 'parking creation' do
    before { visit new_parking_path }

    describe 'with invalid information' do
      it "should not create a parking" do
        expect { click_button 'Create my account' }.not_to change(Parking, :count)
      end

    end
  end
end
