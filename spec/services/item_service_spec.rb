require 'rails_helper' 

RSpec.describe 'ItemService' do 
  it 'retrieves Item data and parases response' do 
    parsed_json = ItemService.items_data(1)

    expect(parsed_json).to be_a Hash 
    expect(parsed_json[:data]).to be_an Array 

    item_1 = parsed_json[:data][0]

    expect(item_1[:id]).to be_a String
    expect(item_1[:attributes][:name]).to be_a String
  end
end