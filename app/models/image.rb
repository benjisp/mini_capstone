class Image < ApplicationRecord

  has_many :product_images
  has_many :products, through: :product_images

end