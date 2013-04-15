require 'spec_helper'

describe 'StaticPages' do

  subject { page }

  describe 'Home page' do

    before { visit home_path }

    it { should have_content 'Welcome' }
    # 'source' corresponds to 'page.source' for subject 'source'
    it { source.should have_selector('title', text: full_title('Welcome')) }
  end

  describe 'Help page' do

    before { visit help_path }

    it { should have_content 'Help' }
    it { source.should have_selector('title', text: full_title('Help')) }
  end

  describe 'About page' do

    before { visit about_path }

    it { should have_content 'About' }

    # due to a change in capybara, checking the 'page' is restricted to visible elements only.
    # for incisible elements like 'title', use 'page.source'
    it { source.should have_selector('title', text: full_title('About')) }

  end

  describe 'Contact page' do

    before { visit contact_path }

    it { should have_content 'Contact' }
    it { source.should have_selector('title', text: full_title('Contact us')) }
  end
end
