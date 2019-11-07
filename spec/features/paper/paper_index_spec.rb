require 'rails_helper'

describe "Paper Index", type: :feature do
	it "should render a table of all papers" do
		visit papers_path
		expect(page).to have_table
		within 'table' do
			expect(page).to have_text 'Title'
			expect(page).to have_text 'Venue'
			expect(page).to have_text 'Year'				
		end
	end


	it "should have a link to create new papers" do
		visit papers_path
		expect(page).to have_link 'New Paper', href: new_paper_path
	end

	it "should display papers published in a certain year" do
		@author = create(:author)
		paper = Paper.create(title: 'abc', venue: 'HPI', year: 1998, authors: [@author])
		paper2 = Paper.create(title: 'def', venue: 'HPI', year: 1999, authors: [@author])
		visit 'papers?year=1998'
		expect(page).to have_text('abc')
		expect(page).to have_no_text('def')
	end
end