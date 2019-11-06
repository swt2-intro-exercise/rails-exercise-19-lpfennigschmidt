require 'rails_helper'

describe "New paper page", type: :feature do
  
  it "should render withour error" do
    visit new_paper_path
  end

  it "should have input fields for title, venue, year" do
  	visit new_paper_path
  	expect(page).to have_field 'paper[title]'
  	expect(page).to have_field 'paper[venue]'
  	expect(page).to have_field 'paper[year]'
  end

  it "should error when entering no title" do
  	visit new_paper_path
  	fill_in('paper[venue]', with: 'HPI')
  	fill_in 'paper[year]', with: '1998'
  	click_button('Create Paper')
  	expect(page).to have_text('error')
  end
end