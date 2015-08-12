require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'cd path', { type: :feature} do
  it 'adds user input to cd organizer' do
    visit '/'
    fill_in 'album', with: 'Dookie'
    click_button 'Add'
    expect(page).to have_content 'Dookie'
  end
end
