require 'rails_helper'

describe "As a user, when I visit '/'; select 'Gryffindor' from select field & 'Search For Members': " do
  it "I should see all the members of house 'Griffindor'." do
    visit '/'

    select 'Gryffindor', from: :house
    click_on 'Search For Members'
save_and_open_page
  end
end
# As a user,
# When I visit "/"
# And I Select "Griffindor" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see a total of the number of members for that house. (18 for Griffindor)
# Then I should see a list of 18 members
#
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
