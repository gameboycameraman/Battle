
def sign_in_and_play
  visit('/')
  fill_in('player1_name', :with => 'Nick')
  fill_in('player2_name', :with => 'JJ')
  click_button('Submit')
end
