require 'rails_helper'

describe "Show page of an author", type: :feature do

  it "should show first_name, last_name and homepage of the author" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    expect(page).to have_text(@alan.first_name)
    expect(page).to have_text(@alan.last_name)
    expect(page).to have_text(@alan.homepage)
  end

end