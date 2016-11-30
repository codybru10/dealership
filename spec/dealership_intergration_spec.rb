require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the dealership list file path', {:type => :feature}) do
  it('processes the user click to return dealership list page') do
    visit('/')
    click_link('See Dealership List')
    expect(page).to have_content('Dealerships')
  end
end


describe('the add dealership form file path', {:type => :feature}) do
  it('processes the user click to return add dealership form page') do
    visit('/')
    click_link('Add New Dealership')
    expect(page).to have_content('Add dealerships:')
  end
end
