require 'rails_helper' 

RSpec.describe Merchant do 
  it 'exists and has Merchant attributes' do 
    data = {id: 1, name: 'Carlos Stich'}

    merchant = Merchant.new(data)

    expect(merchant).to be_a Merchant 
    expect(merchant.id).to eq(data[:id])
    expect(merchant.name).to eq(data[:name])
  end
end