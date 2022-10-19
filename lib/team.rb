
class Team
  attr_reader :team_name, :city

  def initialize(team_name, city)
    @team_name = team_name
    @city = city
  end
end
