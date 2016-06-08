require 'capybara/dsl'
#require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
  fill_in :player_1_name, with: 'Dave'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
    expect(page).to have_content 'Dave vs. Mittens'
  end
end

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
  fill_in :player_1_name, with: 'Dave'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
    expect(page).to have_content 'Mittens: 60HP'
  end
end

feature 'Attacking' do
  scenario 'attack Player 2' do
    visit('/')
  fill_in :player_1_name, with: 'Dave'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end
end
