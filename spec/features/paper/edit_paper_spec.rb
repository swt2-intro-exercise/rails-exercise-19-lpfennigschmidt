describe "Editing paper" do 
	it "should render the edit page" do
		@paper = create(:paper)
		visit edit_paper_path(@paper)
	end

	it "should have a multiselect box for authors" do
		@paper = create(:paper)
		visit edit_paper_path(@paper)
		expect(page).to have_css('select[multiple]')
		
	end
end