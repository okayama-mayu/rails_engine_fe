class MerchantFacade 
  def self.merchants
    json = MerchantService.merchants 
    json[:data].map do |merchant_data| 
      Merchant.new(merchant_data)
    end
  end
  
  def self.merchant(id)
    json = MerchantService.single_merchant(id)
    Merchant.new(json[:data])
  end
end