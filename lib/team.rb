
class Team
  attr_reader :team_name, :city,
              :player_count, :roster

  def initialize(team_name, city)
    @team_name = team_name
    @city = city
    @roster = []
    @player_count = 0
  end


  def add_player(player)
    @roster << player
    #require 'pry' ;binding.pry
    @player_count += 1
  end

  def long_term_players
    long_term = []
    roster.select do |player|

      if player.contract_length > 24
        long_term << player
      end
    end
  end

  def short_term_players
    short_term = []
    roster.select do |player|

      if player.contract_length <= 24
        short_term << player
      end
    end
  end

  # def contract_info
  #
  #
  #   @roster.map do |player|
  #     @long_term_players = []
  #
  #     @short_term_players = []
  #
  #     if player.contract_length > 24
  #       @long_term_players << player
  #     elsif player.contract_length <= 24
  #       @short_term_players << player
  #     end
  #   end
  #
  # end

end
