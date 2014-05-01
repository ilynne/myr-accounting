class Order < ActiveRecord::Base

	belongs_to :shop
	has_many :products, through: :shops

	scope :recent, order("created_at desc").limit(10)
end
