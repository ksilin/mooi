require 'spec_helper'

describe 'UserPages' do

  subject { page }

  describe 'Signup page' do

    before { visit signup_path }

    it { should have_content 'Sign up' }
    # 'source' corresponds to 'page.source' for subject 'source'
    it { source.should have_selector('title', text: full_title('Sign up')) }
  end

end
