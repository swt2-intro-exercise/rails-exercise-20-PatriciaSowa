require 'rails_helper'

describe "Filter papers by year", type: :feature do

    it "When users visit the papers index page with url parameter year=1950, then it should not show the paper published in 1968" do
        paper1 = Paper.new(title:"Some title", venue:"Some venue", year:2020)
        paper2 = Paper.new(title:"Other title", venue:"Other venue", year:2000)
        paper1.save
        paper2.save
        visit papers_path(year: 2000)
        expect(page).not_to have_text("2020")
    end
end