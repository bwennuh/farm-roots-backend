class FarmsController < ApplicationController
  def index
    @farms = Farm.all

    render json: @farms, except: [:created_at, :updated_at]
  end

  def show
    @farm = Farm.find(params[:id])

    render json: @farm
  end

  def new
    @farm = Farm.new
  end

  def create
    farm = Farm.create!(farm_params)

      render json: farm
  end

  # def destroy
  #     farm = farm.find(params[:id])
  #     farm.destroy!

  #     render json: {}
  # end

  # def update
  #     farm = farm.find(params[:id])
  #     # farm.update(likes: farm.likes + 1)
  #     farm.update(farm_params)

  #     render json: farm
  # end

  private

  def farm_params
      params.permit(:name, :address, :bio, :farmer_name)
  end
  
end