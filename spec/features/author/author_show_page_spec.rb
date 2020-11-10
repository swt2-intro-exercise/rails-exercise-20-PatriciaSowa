require 'rails_helper'

describe "Show page of an author", type: :feature do

  it "should show first_name, last_name and homepage of the author" do
    FactoryBot.create :author
    expect(page).to have_text("Alan", "Turing", "http://wikipedia.org/Alan_Turing")
  end