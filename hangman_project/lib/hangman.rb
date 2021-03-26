class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize()
    @secret_word = Hangman.random_word
    @guess_word = @secret_word.split('').map { |char| "_" }
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end
end
