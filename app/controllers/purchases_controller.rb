class PurchasesController < ApplicationController

  def index
    @purchases = Purchase.all

    render json: @purchases, except: [:updated_at]
  end

  def show
    @purchase = Purchase.find(params[:id])

    render json: @purchase
  end

  # def create
  #     purchase = purchase.create!(purchase_params)

  #     render json: purchase
  # end

  # def destroy
  #     purchase = purchase.find(params[:id])
  #     purchase.destroy!

  #     render json: {}
  # end

  # def update
  #     purchase = purchase.find(params[:id])
  #     # purchase.update(likes: purchase.likes + 1)
  #     purchase.update(purchase_params)

  #     render json: purchase
  # end

  private

  def purchase_params
      params.permit(:product_id, :customer_id)
  end
  
end