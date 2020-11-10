require 'rails_helper'

describe "Author should not validate without Lastname", type: :feature do

  it "Validation should fail, when creating an author without last name" do
    author = Author.new(first_name: "Alan", last_name: "", homepage: "http://wikipedia.org/Alan_Turing")

    expect(author).to_not be_valid
  end

end