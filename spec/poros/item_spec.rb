require 'rails_helper' 

RSpec.describe Item do 
  it 'exists and has Item attributes' do 
    data = {id: 1, name: 'Ball', description: 'it is a ball', unit_price: 5.0, merchant_id: 4}

    item = Item.new(data)

    expect(item).to be_an Item 
    expect(item.id).to eq(data[:id])
    expect(item.name).to eq(data[:name])
  end
end