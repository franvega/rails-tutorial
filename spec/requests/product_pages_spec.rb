require 'spec_helper'

describe "ProductPages" do
  subject { page }

  describe "new Product" do
    before { visit new_product_path }

    it { should have_content('new product') }
  end

  describe "product page" do
    let(:product) {FactoryGirl.create(:product) }
    before { visit product_path(product) }

    it { should have_content(product.name) }
  end
end
