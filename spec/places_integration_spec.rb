require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('/', {:type => :feature}) {
  it('loads the index') {
    visit('/')
    expect(page).to have_content("Places!")
  }

}
