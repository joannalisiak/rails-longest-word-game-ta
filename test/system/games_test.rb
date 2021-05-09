require "application_system_test_case"

class GamesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit games_url
  #
  #   assert_selector "h1", text: "Game"
  # end
  test "Going to the /new game page displays a random grid" do
    visit new_url
    assert test: "New game"
    asser_selector "li", count: 10
  end

  test "You can fill the form with a random word, click the play button, and get a message that the word is not in the grid" do
    visit new_url
    fill_in('word', with: 'characteristic')
    click_on('Play')
    # pseudo: make sure the message starts with 'Sorry but CHARACTERISTIC can't be built out of'
  end

  test "You can fill the form with a one-letter consonant word, click play, and get a message that the word is not a valid English word." do
    visit new_url
    fill_in('word', with: 'w')
    click_on('Play')
    # make sure the message is 'Sorry but W does not seem to be a valid English word.'
  end

  test "You can fill the form with a valid English word, click play and get a 'Congratulations' message." do
    visit new_url
    # 1. read the letters
    # 2. form a valid english word from the given letters using wagon dictionary API
    # 3. fill in the input field with the formed word fill_in('word', with 'formed')
    # 4. click play click_on('Play')
    # 5. make sure the messgae is like 'Congratulations! formed is a valid English word!'
  end
end
