require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exception, false)

describe('the places path', {:type => :feature}) do
  it("will add a task to the list") do
    visit('/')
    fill_in('location', :with => 'Seattle')
    click_button('Send')
    expect(page).to have_content('Success')
  end
end
