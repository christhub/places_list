require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('/', {:type => :feature}) {
  it('loads the index') {
    visit('/')
    expect(page).to have_content("Places!")
  }

  it('accepts a place as portland') {
    visit('/')
    fill_in('description', :with => 'disneyland')
    click_button('submit')
    expect(page).to have_content('disneyland')
  }

  

}
