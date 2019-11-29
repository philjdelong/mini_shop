class MerchantsController < ApplicationController

  def index
    @merchants = Merchant.all
  end

  def new
  end
end
