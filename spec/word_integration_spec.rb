require('capybara/rspec')
require('./app')
require('pry')
Capybara.app = Sinatra::Application

describe('word counter path', {:type => :feature}) do
  it('processes user word and string, returns number of times given word appears in given string') do
    visit('/')
    fill_in('sentence', :with => 'my cat is a black cat')
    fill_in('word', :with => 'cat')
    click_button('Send')
    expect(page).to have_content(2)
  end
end
