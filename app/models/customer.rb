class Customer < User
  has_many :orders
  has_many :order_products, through: :orders
end