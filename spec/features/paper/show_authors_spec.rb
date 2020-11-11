require 'rails_helper'

describe "Show authors of a paper", type: :feature do

  it "When a user visits the paper's show page, then it should show the author's full name" do
    @computing = FactoryBot.create :paper
    visit paper_path(@computing)
    expect(page).to have_text("alan turing")
  end

end