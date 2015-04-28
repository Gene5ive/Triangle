require 'capybara/rspec'
require './app'
require 'pry'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('the triangle side path', {:type => :feature}) do
  it('processes the user entry and returns triangle type') do
    visit('/')
    fill_in('side_a', :with => 3)
    fill_in('side_b', :with => 6)
    fill_in('side_c', :with => 9)
    click_button('Send')
    expect(page).to have_content("Not a triangle")
  end
end
