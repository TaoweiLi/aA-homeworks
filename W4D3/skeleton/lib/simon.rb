class Simon
  COLORS = %w(red blue green yellow) #--> ["red", "blue", "green", "yellow"]

  attr_accessor :sequence_length, :game_over, :sequence

  def initialize
    @sequence_length = 1
    @game_over = false
    @sequence = []
  end

  def play
    until @game_over
      self.take_turn
    end
    self.game_over_message
    self.reset_game
  end

  def take_turn
    system("clear")
    self.show_sequence
    self.require_sequence

    unless @game_over
      self.round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    @sequence = []
    @sequence_length.times do |n|
      puts "Start round with #{@sequence_length} colors... color number #{n + 1} "
      self.add_random_color
      sleep(2)
      system("clear")
    end
  end

  def require_sequence #read player's input
    puts "Pleas input the color (#{COLORS.join(", ")}) sequence with presented order:(eg: \"red,blue\")"
    input_arr = gets.chomp.split(",").map { |ele| ele.strip } #delete the sapces before and after the ele_string
    puts "You input is [#{input_arr.join(",")}]"
    if input_arr.length != @sequence.length
      @game_over = true
      return
    end

    (0...@sequence.length).each do |i|
      if input_arr[i] != @sequence[i]
        @game_over = true
        return
      end
    end
  end

  def add_random_color
    rand_color = COLORS.sample(1)
    puts rand_color
    @sequence << rand_color[0]
  end

  def round_success_message
    puts "You got it, start the next round!"
  end

  def game_over_message
    puts "You lose, the sequence is [#{@sequence.join(",")}]"
    puts "your highest score is: #{@sequence.length - 1}"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @sequence = []
  end
end

# s = Simon.new
# s.play


