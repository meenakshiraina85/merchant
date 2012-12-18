class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title, :stock
validates_numericality_of :price
validates :stock,:numericality => {:greater_than_or_equal_to => 0}
has_many :order_items
end
