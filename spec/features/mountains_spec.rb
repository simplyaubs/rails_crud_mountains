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

  scenario 'User can update a mountain from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a mountain'
    fill_in 'Name', with: 'Pikes Peak'
    fill_in 'Height', with: 14114
    click_on 'Add mountain'
    expect(page).to have_content 'Pikes Peak'
    expect(page).to have_content 14114
    click_on 'Pikes Peak'
    expect(page).to have_content 'Pikes Peak'
    expect(page).to have_content 14114
    click_on 'Edit'
    fill_in 'Name', with: 'Mount Evans'
    fill_in 'Height', with: 14265
    click_on 'Update mountain'
    expect(page).to have_content 'Mount Evans'
    expect(page).to have_content 14265
    expect(page).to_not have_content 'Pikes Peak'
    expect(page).to_not have_content 14114
  end

  scenario 'User can delete a mountain from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a mountain'
    fill_in 'Name', with: 'Pikes Peak'
    fill_in 'Height', with: 14114
    click_on 'Add mountain'
    expect(page).to have_content 'Pikes Peak'
    expect(page).to have_content 14114
    click_on 'Pikes Peak'
    expect(page).to have_content 'Pikes Peak'
    expect(page).to have_content 14114
    click_on 'Delete'
    expect(page).to_not have_content 'Pikes Peak'
    expect(page).to_not have_content 14114
  end
end