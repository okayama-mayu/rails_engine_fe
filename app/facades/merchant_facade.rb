class MerchantFacade 
  def self.merchants
    json = MerchantService.merchants 
    json[:data].map do |merchant_data| 
      Merchant.new(merchant_data[:attributes])
    end
  end
end