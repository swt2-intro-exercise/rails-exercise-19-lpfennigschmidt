describe "Show Author" do

	before :each do
		@author = create(:author)
	end

	it "should display the name and homepage of the author" do
		visit 'authors/1/'
		expect(page).to have_text('Alan')
		expect(page).to have_text('Turing')
		expect(page).to have_text('http://wikipedia.de/Alan_Turing')

	end

	it "should have a button for editing the author" do
		visit 'authors/1/'
		expect(page).to have_link('Edit')
	end

	it "should have a button for going back to the index page" do
		visit 'authors/1/'
		expect(page).to have_link('Back')
	end

	it "should have a button for deleting the author" do
		visit 'authors/1/'
		expect(page).to have_link('Delete')
	end


end