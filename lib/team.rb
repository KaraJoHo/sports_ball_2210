
class Team
  attr_reader :team_name, :city,
              :roster

  def initialize(team_name, city)
    @team_name = team_name
    @city = city
    @roster = []
  end
end
