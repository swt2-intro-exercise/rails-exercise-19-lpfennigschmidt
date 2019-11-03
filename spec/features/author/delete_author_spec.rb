describe "Deleting Author" do
	it "should delete an author from the database" do
		@author = create(:author)
		visit 'authors/1'
		click_link('Delete')
		within 'table' do
			expect(page).to have_no_css('tr')
		end
	end
end