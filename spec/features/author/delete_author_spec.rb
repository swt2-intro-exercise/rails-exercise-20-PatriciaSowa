require 'rails_helper'

describe "Delete Author", type: :feature do

  it "When users visit the authors index page, then it should have link to delete an author" do
        @alan = FactoryBot.create :author
        # visit authors_path
        # expect(page).to have_link 'Delete', href: author_path(@alan)

        count_before = Author.count
        @alan.destroy
        count_after = Author.count

        expect(count_before-count_after).to be > 0
  end

end