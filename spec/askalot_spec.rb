require 'spec_helper'

feature 'askalot dummy app' do
  scenario 'works' do
    visit root_path
    page.should have_content 'Askalot dummy app'
  end
end