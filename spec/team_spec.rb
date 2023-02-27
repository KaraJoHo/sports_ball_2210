require './lib/team'
require 'rspec'

RSpec.describe Team do 
  before(:each) do 
    @team = Team.new("Dodgers", "Los Angeles")
    @player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    @player_2 = Player.new("Kenny DeNunez", 500000, 24)
  end
  describe 'initialize' do 
    it 'exists and has attributes' do 
      expect(@team).to be_a(Team)
      expect(@team.name).to eq("Dodgers")
      expect(@team.city).to eq("Los Angeles")
      expect(@team.roster).to eq([])
      expect(@team.player_count).to eq(0)
    end
  end

  describe '#add_player' do 
    it 'adds a player to the roster' do 
      expect(@team.roster).to eq([])

      @team.add_player(@player_1)
      @team.add_player(@player_2)
      
      expect(@team.roster).to eq([@player_1, @player_2])
    end
  end
end