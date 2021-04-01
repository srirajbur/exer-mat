class RockPaperScissor
  INPUTS = ['rock', 'paper', 'scissors']

  def initialize(max_score)
    @max_score = max_score
    @computer_score = 0
    @human_score = 0
    @winner = nil
  end

  def play
    until self.game_over? do
      print "\n"
      self.score
      human_input = self.ask_for_input
      computer_input = RockPaperScissor.computer_input
      check_winner(human_input, computer_input)      
    end
    print "\n"
    self.score
    puts "#{@winner} wins the game!"
  end

  def ask_for_input
    puts "Enter input: "
    input = gets.chomp.downcase
  end

  def validate_input(input)
    if INPUTS.include?(input)
      true
    else
      puts "Invalid Input"
      self.ask_for_input
      false
    end
  end

  def self.computer_input
    INPUTS.sample
  end

  def win?(human_input, computer_input)
    if self.validate_input(human_input)
      if (human_input == 'rock' &&  computer_input == 'scissors') || (human_input == 'scissors' &&  computer_input == 'paper') || (human_input == 'paper' &&  computer_input == 'rock')
        puts "YOU WIN!"
        @human_score += 1
        true
      elsif (computer_input == 'rock' &&  human_input == 'scissors') || (computer_input == 'scissors' &&  human_input == 'paper') || (computer_input == 'paper' &&  human_input == 'rock')
        puts "Computer wins this round :("
        @computer_score += 1
        true
      else
        false
      end
    end
  end

  def tie?(human_input, computer_input)
    if computer_input == human_input
      puts "A TIE"
      true
    else
      false
    end
  end

  def check_winner(human_input, computer_input)
    self.tie?(human_input, computer_input) || self.win?(human_input, computer_input)
  end

  def game_over?
    if @human_score == @max_score 
      @winner = 'Human'
      true
    elsif @computer_score == @max_score
      @winner = "Computer"
      true
    else
      false
    end
  end

  def score
    puts "Human Score: #{@human_score}"
    puts "Computer Score: #{@computer_score}"
  end

end

def get_max_score
  puts "Enter max score: "
  max_score = gets.chomp.to_i
  if max_score < 1
    print "\n\n"
    puts "Invalid input"
    get_max_score
  end
  max_score
end

max_score = get_max_score

game = RockPaperScissor.new(max_score)
game.play