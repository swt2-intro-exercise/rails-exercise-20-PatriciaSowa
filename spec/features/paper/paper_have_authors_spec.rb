require 'rails_helper'

describe "An paper can have many Authors", type: :feature do

    it "should have many authors" do
        paper = Paper.new(title:"Some title", venue:"Some venue", year:2019)
        paper.save
        expect(paper.authors).to be_empty
    end
end