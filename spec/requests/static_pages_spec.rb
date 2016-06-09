require 'spec_helper'

describe 'Static pages' do
  describe 'Home page' do
    it "should have the content 'Sample app'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "shoud have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home')
    end
  end
  describe 'About page' do
    it "shoud have the content 'About page'" do
      visit '/static_pages/about'
      expect(page).to have_content('About page')
    end
    it "shoud have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
  end
end
