require 'rails_helper'

feature 'visits animals page', %Q{
  As a guest
  I want to see photos of animals
  So I can decide whether to continue browsing
} do

  scenario "guest follows 'animals' link from 'photos' page" do
    visit photos_path
    click_link("ANIMALS")

    #expect page to have images
  end

  scenario "guest visits 'animals' page" do
    visit animals_path
    # click on a photo, lightbox it

  end

end
