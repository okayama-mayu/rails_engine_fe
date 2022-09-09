class MerchantsController < ApplicationController 
  def index 
    @merchants = MerchantFacade.merchants 
  end

  def show 
    @items = MerchantFacade.items_data(params[:id])
  end
end