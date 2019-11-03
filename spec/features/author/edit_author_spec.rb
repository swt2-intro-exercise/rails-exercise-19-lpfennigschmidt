describe "Editing Author" do 
	it "should render the edit page" do
		Author.create(
			first_name: 'Alan',
			last_name: 'Turing',
			homepage: 'https://wikipedia.org/Alan_Turing')
		visit 'authors/1/edit'
	end

	it "should update the Author correctly" do
		author = Author.create(
			first_name: 'Alan',
			last_name: 'Turing',
			homepage: 'https://wikipedia.org/Alan_Turing')
		visit 'authors/1/edit'
		fill_in('author[first_name]', with: 'Wanda')
		click_button('Update Author')
		author.reload
		expect(author.first_name).to eq('Wanda')
	end
end