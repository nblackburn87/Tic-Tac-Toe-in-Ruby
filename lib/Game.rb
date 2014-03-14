class Game

  def initialize(row, column)
    new_board = Board.create(row, column)
    player1 = Player.create("X")
    player2 = Player.create("O")

  end
end
