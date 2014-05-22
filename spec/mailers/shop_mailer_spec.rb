require "spec_helper"

describe ShopMailer do
  describe "should email when a new shop is created" do
    shop = FactoryGirl.create(:shop)
    ShopMailer.shop_created(shop, 'lynne@ilynne.com').deliver
    delivery = ActionMailer::Base.deliveries.last
    delivery.parts.each do |part|
      expect(part.body).to include(shop.name)
    end
  end
end

