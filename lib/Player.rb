class Player

attr_reader(:player_symbol)


  def initialize(player_symbol)
    @player_symbol = player_symbol
  end

  def Player.create(player_symbol)
    new_player = Player.new(player_symbol)
  end
end
