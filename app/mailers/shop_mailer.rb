class ShopMailer < ActionMailer::Base
  default from: "from@example.com"

  def shop_created(shop, recipient = '')
    @shop = shop
    mail(to: recipient, subject: "#{@shop.name} created")
  end

end
