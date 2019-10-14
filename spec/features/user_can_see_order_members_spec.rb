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
