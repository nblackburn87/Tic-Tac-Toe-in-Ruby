require 'rspec'
require './lib/Player'
require './lib/Space'
require './lib/Board'
require './lib/Game'


describe 'Player' do
  describe '#initialize' do
    it "Should be initialized with an argument." do
      test_player = Player.new("X")
      test_player.should be_an_instance_of Player
    end
  end
  describe '.create' do
    it 'creates a new instance of player.' do
      test_player = Player.create("X")
      test_player.player_symbol.should eq "X"
    end
  end
end

describe 'Space' do
  describe '#initialize' do
    it 'should be initialized with x and y coordinates' do
      test_space = Space.new(1, 2)
      test_space.should be_an_instance_of Space
    end
  end
  describe '.create' do
    it 'creates a new space with an assigned set of coordinates.' do
      test_space = Space.create(1, 2)
      test_space.x_coord.should eq 1
      test_space.y_coord.should eq 2
    end
  end
end

describe 'Board' do
  describe '#initialize' do
    it 'should be initialized with a three by three grid' do
      test_board = Board.new(3, 3)
      test_board.spaces.length.should eq 9
    end
  end

  describe '.create' do
    it 'should create a board array' do
      test_board = Board.create(3, 3)
      test_board.spaces[0].x_coord.should eq 1
      test_board.spaces[0].y_coord.should eq 1
    end
  end
end

describe 'Game' do
  describe '#initialize' do
    it 'should create a board and two players' do
      test_game = Game.new(row, column)
      test_game.should be_an_instance_of Game
    end
  end
end


