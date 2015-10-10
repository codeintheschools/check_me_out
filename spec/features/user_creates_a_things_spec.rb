require 'rails_helper'

RSpec.feature 'User adds a thing' do
  scenario 'they see the thing in the list' do
    visit new_thing_path

    fill_in 'Name', with: 'Lenovo Laptop'
    fill_in 'Quantity', with: '1'
    click_button 'Create Thing'

    expect(page).to have_css 'h1', 'Lenovo Laptop'
  end
end
