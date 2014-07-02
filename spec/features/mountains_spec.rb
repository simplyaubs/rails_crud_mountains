require 'spec_helper'

feature 'CRUD mountains' do
  scenario 'User can create a list of Mountains' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a mountain'
    fill_in 'Name', with: 'Pikes Peak'
    fill_in 'Height', with: 14114
    click_on 'Add mountain'
    expect(page).to have_content 'Pikes Peak'
    expect(page).to have_content 14114
  end
end