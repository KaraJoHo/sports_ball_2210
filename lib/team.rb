class Team 
  attr_reader :name, :city, :roster, :player_count
  def initialize(name, city)
    @name = name 
    @city = city 
    @roster = []
    @player_count = 0
  end

  def add_player(player)
    @roster << player
    @player_count += 1
  end

  def long_term_players 
    @roster.find_all do |player| 
      player.contract_length > 24
    end
  end

  def short_term_players 
    @roster.find_all do |player| 
      player.contract_length <= 24
    end
  end

  def total_value 
    @roster.sum do |player|  
      player.total_cost
    end
  end

  def details 
    team_details = {}
    team_details["total_value"] = total_value
    team_details["player_count"] = @player_count
    team_details
  end

  def average_cost_of_player 
    average = (total_value / @player_count) 
    "$#{average.to_s.reverse.chars.each_slice(3).map(&:join).join(",").reverse}"
  end

  def players_by_last_name 
    @roster.map do |player| 
      player.last_name
    end.sort.join(", ")
    
  end
end