require 'rails_helper'

describe "New author page", type: :feature do
  
  it "should render withour error" do
    visit new_author_path
  end

  it "should have input fields for names" do
  	visit new_author_path
  	expect(page).to have_field 'author[first_name]'
  	expect(page).to have_field 'author[last_name]'
  	expect(page).to have_field 'author[homepage]'
  end

  it "should error when entering invalid data" do
  	visit new_author_path
  	fill_in('author[first_name]', with: 'Alan')
  	fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'
  	click_button('Save Author')
  	expect(page).to have_text('error')
  end
end