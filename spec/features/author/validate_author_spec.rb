require 'rails_helper'

describe "Show page of an author", type: :feature do

  it "should show first_name, last_name and homepage of the author" do
    author = Author.new(first_name: "Alan", last_name: "", homepage: "http://wikipedia.org/Alan_Turing")

    expect(@author).to_not be_valid
  end

end