class MerchantsController < ApplicationController

  def index
    @merchants = Merchant.all
  end

  def new
  end

  def create
    @merchant = Merchant.create(merchant_params)
    redirect_to "/merchants"
  end

  def show
    @merchant = Merchant.find(params[:id])
  end

  def edit
    @merchant = Merchant.find(params[:id])
  end

  def update
    merchant = Merchant.find(params[:id])
    merchant.update(merchant_params)
    redirect_to "/merchants/#{merchant.id}"
  end

  private

    def merchant_params
      params.permit(:name, :address, :city, :state, :zip)
    end

end
