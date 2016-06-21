require 'spec_helper'

describe "ProductPages" do
  subject { page }

  describe "new Product" do
    before { visit products_new_path }

    it { should have_content('new product') }
  end

  describe "product page" do
    before { visit products_show_path }
    let(:product) {FactoryGirl.create(:product) }

    it { should have_content('edit product') }
    it { should have_content(product.name) }
  end
end
