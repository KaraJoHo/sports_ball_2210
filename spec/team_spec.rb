require './lib/team'
require 'rspec'

RSpec.describe Team do 
  before(:each) do 
    @team = Team.new("Dodgers", "Los Angeles")
    @player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    @player_2 = Player.new("Kenny DeNunez", 500000, 24)
    @player_3 = Player.new("Alan McClennan", 750000, 48)
    @player_4 = Player.new("Hamilton Porter", 100000, 12)
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
      expect(@team.player_count).to eq(2)
    end
  end

  describe 'long_term_players' do 
    it 'is a long term player if their contract length is greater than 2 years' do 
      @team.add_player(@player_1)
      @team.add_player(@player_2)
      @team.add_player(@player_3)
      @team.add_player(@player_4)

      expect(@team.long_term_players).to eq([@player_1, @player_3])
    end
  end

  describe 'short_term_players' do 
    it 'is a short term player if their contract length is 2 years or less' do 
      @team.add_player(@player_1)
      @team.add_player(@player_2)
      @team.add_player(@player_3)
      @team.add_player(@player_4)

      expect(@team.short_term_players).to eq([@player_2, @player_4])
    end
  end

  describe '#total_value' do 
    it 'is the total cost of all the players' do 

      @team.add_player(@player_1)
      @team.add_player(@player_2)
      @team.add_player(@player_3)
      @team.add_player(@player_4)

      expect(@team.total_value).to eq(85200000)
    end
  end

  describe "#details" do 
    it 'is a hash of the teams details' do 
      @team.add_player(@player_1)
      @team.add_player(@player_2)
      @team.add_player(@player_3)
      @team.add_player(@player_4)

      expect(@team.details).to eq({"total_value" => 85200000, "player_count" => 4})
    end
  end

  describe "#average_cost_of_player" do 
    it 'is the average cost of the player' do 
      @team.add_player(@player_1)
      @team.add_player(@player_2)
      @team.add_player(@player_3)
      @team.add_player(@player_4)

      expect(@team.average_cost_of_player).to eq("$21,300,000")
    end
  end

  describe "#players_by_last_name" do 
    it 'is a list of lst names of the players' do 
      @team.add_player(@player_1)
      @team.add_player(@player_2)
      @team.add_player(@player_3)
      @team.add_player(@player_4)

      expect(@team.players_by_last_name).to eq("DeNunez, McClennan, Palledorous, Porter")
    end
  end
end