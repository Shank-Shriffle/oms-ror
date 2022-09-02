class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_products

  enum status: {
    Ordered: 0,
    Shipped: 1,
    Delivered: 2,
    Cancelled: 3
  }
end
