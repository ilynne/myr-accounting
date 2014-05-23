require 'spec_helper'

feature 'Creating a new shop' do
  scenario 'succeeds with a name' do
    visit new_shop_path
    fill_in 'Name', with: 'New Test Shop'
    click_button 'Create Shop'
    expect(page).to have_content('successfully created')
  end

  scenario 'sends email after successful creation' do
    visit new_shop_path
    fill_in 'Name', with: 'New Test Shop'
    click_button 'Create Shop'
    delivery = ActionMailer::Base.deliveries.last
    delivery.parts.each do |part|
      expect(part.body).to include(shop.name)
    end
  end

  scenario 'fails without a name' do
    visit new_shop_path
    click_button 'Create Shop'
    expect(page).to have_content("Name can't be blank")
  end
end