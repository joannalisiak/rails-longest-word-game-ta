require 'open-uri'

class GamesController < ApplicationController
  VOWELS = %W[A E I O U Y]

  def new
    @letters = VOWELS.sample(5)
    @letters += (('A'..'Z').to_a - VOWELS).sample(5)
    @letters.shuffle!
  end

  def score
    @letters = params[:letters]
    @word = params[:word].upcase
    @valid = is_valid?(@word, @letters)
    @english = is_english?(@word)

    if @valid && @english
      @score = calculate_score(@word)
      # @overall += @score
      session[:overall] += @score
      raise
    end

    @overall = session[:overall]

    # raise
  end

  private

  def is_valid?(word, letters)
    word.chars.all? do |char| 
      word.count(char) <= letters.count(char)
    end
  end

  def is_english?(word)
    response = URI.open("https://wagon-dictionary.herokuapp.com/#{word}")
    json = JSON.parse(response.read)
    json["found"]
  end

  def calculate_score(word)
    (word.length).pow(3)
  end
end
