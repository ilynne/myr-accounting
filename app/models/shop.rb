class Shop < ActiveRecord::Base

  validates :name, presence: true

	has_many :products
	has_many :orders

  accepts_nested_attributes_for :products
	
end
