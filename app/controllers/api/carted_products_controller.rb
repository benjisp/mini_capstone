class Api::CartedProductsController < ApplicationController

  before_action :authenticate_user

  def create
    @cartedproduct = CartedProduct.create(product_id: params[:product_id],
      quantity: params[:quantity])
    render 'show.json.jb'
  end
end