require 'rails_helper'

RSpec.describe 'User signs in', type: :feature do

  before do
    visit new_user_session_path
  end

  let(:user) { create(:user) }

  context 'with valid credentials' do
    it 'sees a success message' do
      sign_in_as(user)
      expect(page).to have_selector '.notice', text: 'Signed in successfully.'
    end
  end

end