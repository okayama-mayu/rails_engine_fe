require 'rails_helper' 

RSpec.describe 'Merchants', type: :feature do 
  # As a visitor,
  # When I visit '/merchants'
  # I should see a list of merchants by name
  it 'lists the merchants by name' do 
    visit '/merchants' 

    list = Array.new 
    list = find('#parent ul').all('li')
    expect(list.size).to eq 100 

    expect(page).to have_content 'Schroeder-Jerde'
    expect(page).to have_content 'Klein, Rempel and Jones'
    expect(page).to have_content 'Osinski, Pollich and Koelpin'
  end

  # and when I click the merchant's name
  # I should be on page '/merchants/:id'
  # And I should see a list of items that merchant sells.

end