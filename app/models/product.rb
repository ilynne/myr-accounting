class Product < ActiveRecord::Base

  validates :name, presence: true

  belongs_to :shop

  accepts_nested_attributes_for :shop

end
