class Customer < User
  has_many :orders, dependent: :destroy
  has_many :order_products, through: :orders
  has_one :cart, dependent: :destroy
  has_many :order_products, through: :cart
end