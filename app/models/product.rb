class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: {message: "Product already exists!"}
  validates :price, :quantity, numericality: { only_integer: true }
end
