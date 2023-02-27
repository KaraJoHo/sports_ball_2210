require './lib/player'
require 'rspec'

RSpec.describe Player do 
  before(:each) do 
    @player = Player.new("Michael Palledorous", 1000000, 36)
  end

  describe 'initialize' do 
    it 'exists and has attributes' do 
      expect(@player.first_name).to eq("Michael")
      expect(@player.last_name).to eq("Palledorous")
      expect(@player.monthly_cost).to eq(1000000)
      expect(@player.contract_length).to eq(36)
      expect(@player.nickname).to eq(nil)
    end

    it 'has a total cost' do 
      expect(@player.total_cost).to eq(36000000)
    end
  end
end