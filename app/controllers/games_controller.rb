class GamesController < ApplicationController
  def new
    alphabet = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
    @letters = alphabet.sample(10)
  end

  def score
  end
end
