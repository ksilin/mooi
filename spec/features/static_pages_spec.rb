require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have a welcome message" do
      # equivalent to '/static_pages/home'
      visit static_pages_home_path
      page.should have_content "Welcome"
    end

    it "should have it's name in the title" do
      # equivalent to '/static_pages/home'
      visit static_pages_home_path
      page.source.should have_selector('title', text: "Mooi | Welcome")
    end
  end

  describe "Help page" do

    it "should have it's name rendered" do
      # equivalent to '/static_pages/help'
      visit static_pages_help_path
      page.should have_content "Mooi | Help"
    end

    it "should have it's name in the title" do
      # equivalent to '/static_pages/help'
      visit static_pages_help_path
      page.source.should have_selector('title', text: "Mooi | Help")
    end
  end

  describe "About page" do

    it "should have it's name rendered" do
      # equivalent to '/static_pages/help'
      visit static_pages_about_path
      p page.document.text
      page.should have_content "Mooi | About"
    end

    it "should have it's name in the title" do
      # equivalent to '/static_pages/help'
      visit static_pages_about_path
      # due to a change in capybara, checking the 'page' is restricted to visible elements only.
      # for incisible elements like 'title', use 'page.source'
      page.source.should have_selector('title', text: "Mooi | About")
    end

  end

  describe "Contact page" do

    it "should have it's name rendered" do
      # equivalent to '/static_pages/help'
      visit static_pages_contact_path
      p page.document.text
      page.should have_content "Mooi | Contact us"
    end

    it "should have it's name in the title" do
      # equivalent to '/static_pages/help'
      visit static_pages_contact_path
      # due to a change in capybara, checking the 'page' is restricted to visible elements only.
      # for incisible elements like 'title', use 'page.source'
      page.source.should have_selector('title', text: "Mooi | Contact us")
    end

  end

end
