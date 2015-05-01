require 'rails_helper'

feature 'visits headshots page', %Q{
  As a guest
  I want to see headshots
  So I can decide whether to continue browsing
} do

  scenario "guest follows 'headshots' link from 'photos' page" do
    visit photos_path
    click_link("HEADSHOTS")

    #expect page to have images
  end

  scenario "guest visits 'headshots' page" do
    visit headshots_path
    # click on a photo, lightbox it

  end

end
