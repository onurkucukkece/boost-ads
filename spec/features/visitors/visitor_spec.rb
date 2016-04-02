require 'rails_helper'

  describe ' a visitor ', type: :feature, js: true do
    before :each do
    end

    it 'makes a search with a keyword' do
      visit 'https://www.google.com.tr'
      fill_in 'lst-ib', with: 'vacancier Onur Küçükkeçe'
      script = '
        var elem = document.getElementsByClassName("lsb");
        elem[0].click();
      '
      page.execute_script(script)
      click_link 'Vacancier (Onur Küçükkeçe) - DeviantArt'
      sleep 0.5
      expect(page).to have_content 'Centraal Station'
    end
  end