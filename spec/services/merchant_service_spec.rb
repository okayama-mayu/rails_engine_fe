require 'rails_helper' 

RSpec.describe 'MerchantService' do 
  it 'retrieves Merchant data and parses response' do 
    parsed_json = MerchantService.merchant_data

    expect(parsed_json).to be_a Hash 
    expect(parsed_json[:results]).to be_an Array 

    merchant_1 = parsed_json[:results][0]

    expect(merchant_1.name).to be_a String 
  end
end