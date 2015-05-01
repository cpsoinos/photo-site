require 'rails_helper'

feature 'visits home page', %Q{
  As a guest
  I want to see photos on the home page
  So I can decide whether to continue browsing
} do

  scenario "guest lands on home page" do
    visit root_path

    expect(page).to have_link("HOME")
    expect(page).to have_link("PHOTOGRAPHY")
    expect(page).to have_link("DESIGN")
    expect(page).to have_link("ABOUT")
    expect(page).to have_content("ALEX WESLEY BRANDT")
  end

  scenario "guest visits 'photography' page" do
    visit photographs_path

    expect(page).to have_link("HEADSHOTS")
    expect(page).to have_link("WEDDINGS")
    expect(page).to have_link("PEOPLE")
    expect(page).to have_link("ANIMALS")
    expect(page).to have_link("OBJECTS")
    expect(page).to have_link("WORLD")
  end

  scenario "guest visits 'design' page" do
    #what content goes here?
  end

  scenario "guest visits 'about' page" do
    visit about_path

    expect(page).to have_content("ABOUT WESLEY BRANDT PHOTOGRAPHY")
    expect(page).to have_link("alex@wesleybrandt.com")
    expect(page).to have_content("About Alex")
  end

end
