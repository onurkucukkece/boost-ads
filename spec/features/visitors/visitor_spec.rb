require 'rails_helper'

describe ' a visitor ', type: :feature, js: true do
  it 'makes a search with a keyword' do
    visit 'https://www.google.com.tr'
    find(:css, 'input[title="Ara"]').set('boostads heroku')
    find(:css, 'button[value="Ara"]').click
    sleep 3
    first('a', text: /BoostAds/).click
    sleep 3
    expect(page).to have_content 'Welcome'
  end
end