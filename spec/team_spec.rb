require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do
  it ' has a team object' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team).to be_a(Team)
  end

  it ' has a roster' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.roster).to eq([])
  end
  it ' has a player count' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.player_count).to eq(0)
  end

  describe '#add_player' do
    it 'adds player objects to the roster and updates player_count' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      team.add_player(player_1)
      expect(player_1).to be_a(Player)

      team.add_player(player_2)
      expect(player_2).to be_a(Player)

      expect(team.roster).to eq([player_1, player_2])
    end
  end

  describe '#long_term_players' do
    it 'checks who is a long term vs short term contract player' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
      team.roster

      expect(team.long_term_players).to eq([player_1, player_3])
    end
  end

  describe '#short_term_players' do
    it 'checks who is a long term vs short term contract player' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
      team.roster

      expect(team.short_term_players).to eq([player_2, player_4])
    end
  end

  describe '#total_value' do
    it 'calculates the cost of all the players' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
      team.roster

      expect(team.total_value).to eq(85200000)
    end
  end

end
