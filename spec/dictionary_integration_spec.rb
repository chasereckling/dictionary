require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe("word path", {:type => :feature}) do
  it('will add a word to the list') do
    visit('/')
    click_on('Add New Word')
    fill_in('name', :with => 'turtle')
    click_button('Add Word')
    click_on('Home')
    expect(page).to have_content("turtle")
  end
end

describe("definition path", {:type =>:feature}) do
  it('will add a definition to a word') do
    visit('/')
    click_on('Add New Word')
    fill_in('name', :with => 'fuzzy')
    click_button('Add Word')
    click_on('Home')
    click_on('fuzzy')
    fill_in('define', :with => 'soft')
    click_on('Add definition')
    click_on('Home')
    click_on('fuzzy')
    expect(page).to have_content("soft")
  end
end
