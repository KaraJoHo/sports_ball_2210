require './lib/team'
require 'rspec'

RSpec.describe Team do 
  before(:each) do 
    @team = Team.new("Dodgers", "Los Angeles")
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
end