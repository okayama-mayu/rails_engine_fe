require 'rails_helper' 

RSpec.describe 'MerchantService' do 
  it 'retrieves Merchant data and parses response' do 
    parsed_json = MerchantService.merchants

    expect(parsed_json).to be_a Hash 
    expect(parsed_json[:data]).to be_an Array 

    merchant_1 = parsed_json[:data][0]

    expect(merchant_1[:id]).to be_a String
    expect(merchant_1[:attributes][:name]).to be_a String 
  end
end