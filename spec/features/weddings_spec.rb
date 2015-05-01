require 'rails_helper'

feature 'visits weddings page', %Q{
  As a guest
  I want to see wedding photos
  So I can decide whether to continue browsing
} do

  scenario "guest follows 'weddings' link from 'photos' page" do
    visit photos_path
    click_link("WEDDINGS")

    #expect page to have images
  end

  scenario "guest visits 'weddings' page" do
    visit weddings_path
    # click on a photo, lightbox it

  end

end
