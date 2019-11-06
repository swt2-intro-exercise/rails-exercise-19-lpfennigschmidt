describe "Show Paper" do

	before :each do
		@paper = create(:paper)
	end

	it "should display the title, venue and year of the paper" do
		visit 'papers/1/'
		expect(page).to have_text(@paper.title)
		expect(page).to have_text(@paper.venue)
		expect(page).to have_text(@paper.year)

	end

	#it "should display the authors of the paper" do
	#	visit 'papers/1/'
	#	expect(page).to have_text(@paper.authors)
	#end

	it "should have a button for editing the paper" do
		visit 'papers/1/'
		expect(page).to have_link('Edit')
	end

	it "should have a button for going back to the index page" do
		visit 'papers/1/'
		expect(page).to have_link('Back')
	end

	it "should have a button for deleting the paper" do
		visit 'papers/1/'
		expect(page).to have_link('Delete')
	end


end