class Api::ProductsController < ApplicationController

  def all_products_action
    @products = Product.all

    render 'all_products.json.jb'
  end
  
  def product_action
    @product = Product.find_by(name: "Starburst")
    render 'product.json.jb'
    
  end
end