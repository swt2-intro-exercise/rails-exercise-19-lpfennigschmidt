require 'rails_helper'

describe "Author Index", type: :feature do
	it "should render a table of all authors" do
		visit authors_path
		expect(page).to have_table
		within 'table' do
			expect(page).to have_text 'Full Name'
			expect(page).to have_text 'Homepage'				
		end
	end

	#it "should have links referencing to authors" do
	#	visit authors_path
	#	expect(page).to have_text 'Show'
	#end

	it "should have a link to create new authors" do
		visit authors_path
		expect(page).to have_link 'New Author', href: new_author_path
	end
end