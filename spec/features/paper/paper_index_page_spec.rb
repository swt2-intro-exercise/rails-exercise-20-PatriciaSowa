require 'rails_helper'

describe "Author index page", type: :feature do

  it "when a user visits the author index page, then the page should render" do
    @computing = FactoryBot.create :paper
    visit papers_path
    expect(page).to have_text(@computing.title)
  end

end