require 'rails_helper'

feature 'politicians' do
  context 'no politician has been added' do
    scenario 'should display a prompt to add a politician' do
      visit '/politicians'
      expect(page).to have_content 'No politicians yet'
      expect(page).to have_link 'Add a politician'
    end
  end
end
