require 'spec_helper'

describe "Products Integration" do
  context "new" do

    before :each do
      visit new_product_path
      fill_in "Description", with: 'Very sparkly!'
    end

    it "should tell us that the product name is required" do
      click_link_or_button "Create Product"
      page.should have_content "Name can't be blank"
    end

    it "should allow us to add a shop" do
      shop_count = Shop.count
      fill_in 'product_name', with: 'Tiara'
      fill_in "Price", with: "10"
      fill_in 'product_shop_attributes_name', with: "Tiarazon"
      click_button "Create Product"
      Shop.count.should eq shop_count+1
    end


    it "should allow us to add a product to a shop" do
      product = Product.create(name: 'Sapphire Tiara', price: 15, description: "Princess Di's favorite!")
      shop = Shop.create name: 'Tiaras R Us'
      visit edit_product_path(product)
      select('Tiaras R Us', from: 'product_shop_id')
      click_button "Update Product"
      product.reload.shop.should eq shop
    end

  end
end
