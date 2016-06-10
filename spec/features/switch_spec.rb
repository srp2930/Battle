feature 'switch'  do
  scenario 'switching from player1 to player2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Switch turns'
    expect(page).to have_content 'Dave: 60HP'
  end
end