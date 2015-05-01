require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('definition path', {:type => :feature}) do
  it('add a definition to a word') do
    visit('/')
    fill_in('define', :with => 'fuzzy')
    click_button('Add definition')
    expect(page).to have_content(fuzzy)
  end
end
