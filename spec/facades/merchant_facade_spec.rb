require 'rails_helper' 

RSpec.describe 'MerchantFacade' do 
  it 'returns an array of Merchant objects' do 
    merchants = MerchantFacade.merchants 
    
    expect(merchants).to be_an Array 
    expect(merchants).to be_all Merchant 
  end

  it 'returns a single Merchant object' do 
    merchant = MerchantFacade.merchant(1)

    expect(merchant).to be_instance_of Merchant
  end
end