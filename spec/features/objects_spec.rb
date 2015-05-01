require 'rails_helper'

feature 'visits objects page', %Q{
  As a guest
  I want to see photos of objects
  So I can decide whether to continue browsing
} do

  scenario "guest follows 'objects' link from 'photos' page" do
    visit photos_path
    click_link("OBJECTS")

    #expect page to have images
  end

  scenario "guest visits 'objects' page" do
    visit objects_path
    # click on a photo, lightbox it

  end

end
