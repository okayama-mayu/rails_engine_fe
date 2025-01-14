class MerchantsController < ApplicationController 
  def index 
    @merchants = MerchantFacade.merchants 
  end

  def show 
    @merchant = MerchantFacade.merchant(params[:id]) 
    @items = ItemFacade.items(params[:id])
  end
end