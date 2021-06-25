class CustomersController < ApplicationController
  def index
    @customers = Customer.all

    render json: @customers, except: [:created_at, :updated_at]
  end

  def show
    @customer = Customer.find(params[:id])

    render json: @customer
  end

  def new
    @customer = Customer.new
  end

  def create
    customer = Customer.create!(customer_params)

    if customer.valid?
      render json: customer
    else
      flash[:errors] = customer.errors.full_messages
      render json: flash[:errors]
    end
  end

  # def destroy
  #     customer = Customer.find(params[:id])
  #     customer.destroy!

  #     render json: {}
  # end

  # def update
  #     customer = Customer.find(params[:id])
  #     # customer.update(likes: customer.likes + 1)
  #     customer.update(customer_params)

  #     render json: customer
  # end

  private

  def customer_params
      params.permit(:name, :address, :phone_number)
  end
  
end
