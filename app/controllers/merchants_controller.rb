class MerchantsController < ApplicationController 
  def index 
    @merchants = json[:results].map do |merchant_data| 
      Merchant.new(merchant_data)
    end
  end
end