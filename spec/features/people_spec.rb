require 'rails_helper'

feature 'visits people page', %Q{
  As a guest
  I want to see photos of people
  So I can decide whether to continue browsing
} do

  scenario "guest follows 'people' link from 'photos' page" do
    visit photos_path
    click_link("PEOPLE")

    #expect page to have images
  end

  scenario "guest visits 'people' page" do
    visit people_path
    # click on a photo, lightbox it

  end

end
