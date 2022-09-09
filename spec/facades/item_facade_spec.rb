require 'rails_helper' 

RSpec.describe 'ItemFacade' do 
  it 'returns an array of Item objects' do 
    items = ItemFacade.items(1) 

    expect(items).to be_an Array 
    expect(items).to be_all Item 
  end
end