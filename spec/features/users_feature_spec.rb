require 'rails_helper'

feature 'User can sign in and out' do

  context 'User not signed in and on the homepage' do

    it 'should see sign in and sign up link' do
      visit '/'
      expect(page).to have_content('Sign in')
      expect(page).to have_content('Sign up')
    end

    it 'should not see sign out link' do
      visit '/'
      expect(page).to_not have_content('Sign out')
    end

  end

  context 'User signed in on homepage' do

    before do
      sign_up
    end

    it 'shows sign out link if user is logged in' do
      expect(page).to have_link('Sign out')
    end
  end
end
