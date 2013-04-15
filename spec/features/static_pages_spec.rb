require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    before do
      visit home_path
    end

    it "should have a welcome message" do
      page.should have_content "Welcome"
    end

    it "should have it's name in the title" do
      page.source.should have_selector('title', text: "Mooi | Welcome")
    end
  end

  describe "Help page" do

    before{visit help_path}

    it "should have it's name rendered" do
      page.should have_content "Mooi | Help"
    end

    it "should have it's name in the title" do
      page.source.should have_selector('title', text: "Mooi | Help")
    end
  end

  describe "About page" do

    before {visit about_path}

    it "should have it's name rendered" do
      page.should have_content "Mooi | About"
    end

    it "should have it's name in the title" do
      # due to a change in capybara, checking the 'page' is restricted to visible elements only.
      # for incisible elements like 'title', use 'page.source'
      page.source.should have_selector('title', text: "Mooi | About")
    end

  end

  describe "Contact page" do

    before{visit contact_path}

    it "should have it's name rendered" do
      page.should have_content "Mooi | Contact us"
    end

    it "should have it's name in the title" do
      # due to a change in capybara, checking the 'page' is restricted to visible elements only.
      # for incisible elements like 'title', use 'page.source'
      page.source.should have_selector('title', text: "Mooi | Contact us")
    end
  end
end
