class Shop < ActiveRecord::Base

	has_many :products
	has_many :orders
	
end
