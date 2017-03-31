feature "Reversing Turns" do

  scenario "expects players turn to change" do
    sign_in_and_play
    click_button('Attack')
    click_button('Next Turn')
    expect(page).to have_content ('JJ clocking in')
    expect(page).to have_content ('Nick back in')
  end
end
