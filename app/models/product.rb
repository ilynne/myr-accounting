class Product < ActiveRecord::Base

  belongs_to :shop

  accepts_nested_attributes_for :shop

end
