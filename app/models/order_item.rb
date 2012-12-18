class OrderItem < ActiveRecord::Base
  attr_accessible :order_id, :product_id, :quantity
  belongs_to :order
validates :order_id,:product_id, :presence => true
end
