class Product < ApplicationRecord
  before_validation :normalize_name, on: :create

  validates :name, presence: true, uniqueness:  {message: "already exists!"}
  validates :price, :quantity, numericality: { only_integer: true }

  private
    def normalize_name
      self.name = name.downcase.titleize
    end
end
