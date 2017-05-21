require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('brand', {:type => :feature}) do
  it ("Will allow users to add a brand with a price")do
    visit('/brands')
    click_link('View Brands')
    fill_in('brand_name', :with => 'nike')
    fill_in('Price', :with => '55')
    click_button('Add Brand')
    expect(page).to have_content('Nike')
  end
end
