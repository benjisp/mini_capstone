class Product < ApplicationRecord

  # validates :name, :price, :description, :image_url, presence: true
  # validates :name, uniqueness: true
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, length: { in: 5..100 }

  has_many :product_images
  has_many :images, through: :product_images
  
  belongs_to :supplier

  has_many :orders

  has_many :product_categories

  has_many :categories, through: :product_categories

  has_many :carted_products

  has_many :orders, through: :carted_products

  has_many :users, through: :carted_products

  def category_names
    categories.map { |category| category.name }
  end

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end