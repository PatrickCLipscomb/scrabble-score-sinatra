require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('the project path', {:type => :feature}) do
  it('processes the user entry and returns a scrabble score') do
    visit ('/')
    fill_in("scrabble_score", :with => 'zebra')
    click_button('Score it!')
    expect(page).to have_content('16')
  end
end
