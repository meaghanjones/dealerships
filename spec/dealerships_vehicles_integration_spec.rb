# require('capybara')
# require('./app')
# Capybara.app = Sinatra::Application
# set(:show_expectations, false)
#
# describe('the add dealership path', {:type => :feature})do
#   it('processes the user entry and confirms it was successfully added') do
#     visit('/')
#     click_link('add-dealership')
#     fill_in('name', :with => 'Bob\'s used cars')
#     click_button('Add')
#     expect(page).to have_content('Success')
#   end
# end
#
# describe('the add vehicle path', {:type => :feature}) do
#   it('processes the user vehicle entry and confirms it was successfully added') do
#     visit('/dealerships/:id')
#     click_link('add-vehicle')
#     fill_in('make', :with => 'Mazda')
#     fill_in('model', :with => 'Protege')
#     fill_in('year', :with => '2001')
#     click_button('Add')
#     expect(page).to have_content('Success')
#   end
# end
