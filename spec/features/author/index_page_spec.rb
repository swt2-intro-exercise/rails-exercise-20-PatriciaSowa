require 'rails_helper'

describe "Author index page", type: :feature do

  it "when a user visits the author index page, then the page should render" do
    @alan = FactoryBot.create :author
    visit authors_path
    expect(page).to have_link 'Show', href: author_path(@alan)
    expect(page).to have_link 'New', href: new_author_path
  end

end