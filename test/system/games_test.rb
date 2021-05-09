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
  end

  test "You can fill the form with a one-letter consonant word, click play, and get a message that the word is not a valid English word." do
  end

  test "You can fill the form with a valid English word, click play and get a 'Congratulations' message." do
  end
end
