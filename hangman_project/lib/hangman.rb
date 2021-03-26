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

  def guess_word
    @guess_word
  end 

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    indices = []
    @secret_word.split('').each_with_index do |ele, idx|
      if char == ele
        indices << idx
      end
    end

    indices
  end

  def fill_indices(char, indices)
    indices.each do |index|
      @guess_word[index] = char
    end
  end

  def try_guess(char)
    if self.already_attempted?(char)
      puts 'that has already been attempted'
      return false
    else
      @attempted_chars << char
      indices = self.get_matching_indices(char)

      @remaining_incorrect_guesses -= 1 if indices.empty?

      self.fill_indices(char, indices) 
      return true 
    end
  end 

  def ask_user_for_guess
    puts 'Enter a char:'
    user_input = gets.chomp
    if user_input.length > 1
      print "\n\n"
      puts 'ENTER ONLY 1 CHAR'
      return self.ask_user_for_guess
    end
    return self.try_guess(user_input)
  end

  def win?
    if @guess_word.join('') == @secret_word
      puts "YOU WIN!"
      return true
    else
      return false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "YOU LOSE"
      return true
    else
      return false
    end
  end

  def game_over?
    if self.win? || self.lose?
      puts "The word was #{@secret_word}"
      return true
    else
      false
    end
  end

end
