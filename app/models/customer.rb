class Customer < User
  has_many :orders, dependent: :destroy
  has_many :order_products, through: :orders
end