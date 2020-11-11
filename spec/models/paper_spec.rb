require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "The paper model should have a title and a venue, which are strings and a year, which is Integer." do

      paper = Paper.new(title: "Corona", venue: "Christian Drosten", year: 2019)
      expect(paper.title).to eq("Corona")
      expect(paper.venue).to eq("Christian Drosten")
      expect(paper.year).to eq(2019)
   end
end
