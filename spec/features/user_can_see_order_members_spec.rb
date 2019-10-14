require 'rails_helper'

describe "As a user, when I visit '/'; select 'Gryffindor' from select field & 'Search For Members': " do
  it "I should see all the members of house 'Griffindor'." do
    visit '/'

    select 'Gryffindor', from: :house
    click_on 'Search For Members'
    expect(current_path).to eq('/search')

    expect(page).to have_content("21 for Gryffindor")

    within(first(".members")) do
      expect(page).to have_content("")
      expect(page).to have_content("")
      expect(page).to have_content("")
      expect(page).to have_content("")
    end
  end
end

# Then I should see a list of 18 members
#
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
