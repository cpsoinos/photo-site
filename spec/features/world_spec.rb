require 'rails_helper'

feature 'visits world page', %Q{
  As a guest
  I want to see photos of world
  So I can decide whether to continue browsing
} do

  scenario "guest follows 'world' link from 'photos' page" do
    visit photos_path
    click_link("WORLD")

    #expect page to have images
  end

  scenario "guest visits 'world' page" do
    visit world_path
    # click on a photo, lightbox it

  end

end
