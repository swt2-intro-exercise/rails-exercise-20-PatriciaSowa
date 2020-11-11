require 'rails_helper'

describe "Paper validation", type: :feature do

  it "Paper should not be valid without having all attributes. Year should be a numeric value" do
    paper1 = Paper.new(title: "", venue: "Max", year: 2020)
    expect(paper1).to_not be_valid

    paper2 = Paper.new(title: "Best Practices", venue: "", year: 2020)
    expect(paper2).to_not be_valid

    paper3 = Paper.new(title: "Best Practices", venue: "Max", year: nil)
    expect(paper3).to_not be_valid

    paper4 = Paper.new(title: "Best Practices", venue: "Max", year: "2020")
    expect(paper4).to_not be_valid
  end

end