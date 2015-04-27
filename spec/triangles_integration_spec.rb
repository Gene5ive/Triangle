require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application

describe('the triangle side path', {:type => :feature}) do
  it('processes the user entry and returns triangle type') do
    visit('/')
    fill_in('side_a', :with => '3')
    fill_in('side_b', :with => '4')
    fill_in('side_c', :with => '5')
    click_button('Send')
    expect(page).to have_content("Scalene")
  end
end
