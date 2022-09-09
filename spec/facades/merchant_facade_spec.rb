require 'rails_helper' 

RSpec.describe 'MerchantFacade' do 
  it 'returns an array of Merchant objects' do 
    merchants = MerchantFacade.merchants 
    
    expect(merchants).to be_an Array 
    expect(merchants).to be_all Merchant 
  end

  it 'returns a single Merchant object' do 
    merchant = MerchantFacade.merchant(1)

    expect(merchant[:id]).to eq 1 
    expect(merchant[:attributes][:name]).to eq "Schroeder-Jerde"
  end
end