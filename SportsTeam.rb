class SportsTeam

  attr_reader :team_name
  attr_accessor :coach, :points, :players

  def initialize(team_name, players, coach_name, points)
    @team_name = team_name
    @players = players
    @coach = coach_name
    @points = points
  end

  # def name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach_name
  # end

  def set_new_coach(new_coach)
    @coach = new_coach
  end

  def new_player(player)
    players.push(player)
  end

  def player_search(player)
    for person in @players
      if person == player
        return true
      end
    end
    return false
  end
 #   for teamPlayer in @players
 #     if teamPlayer == player
 #       return true
 #     else
 #       return false
 #     end
 #   end
 #
 # end

 def win
  return @points += 3
 end

 def loose
   return @points += 0
 end

end
