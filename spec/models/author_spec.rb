require 'rails_helper'

describe "Create Author-Instance", type: :model do

  it "The author model should have a first_name, last_name and homepage, which are all strings.
      It should furthermore have a method name which returns the full name of an author (the first name followed by the last name), e.g. 'Alan Turing'." do
    author = Author.new("Alan", "Turing", "http://wikipedia.org/Alan_Turing")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
    expect(author.name).to eq("Alan Turing")
  end

end