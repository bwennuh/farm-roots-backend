class ProductsController < ApplicationController

  def index
    @products = Product.all

    render json: @products, except: [:created_at, :updated_at]
  end

  def show
    @product = Product.find(params[:id])

    render json: @product
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.create!(product_params)

    render json: product
  end

  def edit
    @product = Product.find(params[:id])

    render json: @product
  end

  def update
      product = Product.find(params[:id])
      # product.update(likes: product.likes + 1)
      product.update(product_params)

      render json: product
  end


  def destroy
      product = Product.find(params[:id])
      product.destroy!

      render json: {}
  end

  private

  def product_params
      params.permit(:name, :price, :farm_id)
  end
  
end