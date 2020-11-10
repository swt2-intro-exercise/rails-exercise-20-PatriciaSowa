require 'rails_helper'

describe "Edit author page should render", type: :feature do

  it "when user visits the author's edit page, then the page should render" do
         @author = Author.new(first_name: "X", last_name: "B", homepage: "C")
         @author.update(first_name: 'A')
         @author.reload
         visit author_path(@author)
         expect(page).to have_text("A")
         expect(page).to have_text("B")
         expect(page).to have_text("C")
  end

end