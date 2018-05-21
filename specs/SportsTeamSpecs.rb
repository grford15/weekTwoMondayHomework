require('minitest/autorun')
require('minitest/rg')

require_relative('../SportsTeam.rb')

class TestSportsTeam < MiniTest::Test

  def test_sports_team
    team = SportsTeam.new("Rangers", ["Laudrup", "Gazza", "McCoist"], "Walter Smith", 0)
    assert_equal("Rangers", team.team_name)
  end

  def test_team_players
      team = SportsTeam.new("Rangers", ["Laudrup", "Gazza", "McCoist"], "Walter Smith", 0)
      assert_equal(["Laudrup", "Gazza", "McCoist"], team.players)
  end

  def test_team_coach
    team = SportsTeam.new("Rangers", ["Laudrup", "Gazza", "McCoist"], "Walter Smith", 0)
    assert_equal("Walter Smith", team.coach)
  end

  def test_set_new_coach
    team = SportsTeam.new("Rangers", ["Laudrup", "Gazza", "McCoist"], "Walter Smith", 0)
    team.set_new_coach("Steven Gerrard")
    assert_equal("Steven Gerrard", team.coach)
  end

  def test_new_player
      team = SportsTeam.new("Rangers", ["Laudrup", "Gazza", "McCoist"], "Walter Smith", 0)
      team.new_player("Prso")
      assert_equal(4, team.players.length)
    end

  def test_player_search__true
      team = SportsTeam.new("Rangers", ["Laudrup", "Gazza", "McCoist"], "Walter Smith", 0)
      result = team.player_search("Gazza")
      assert_equal(true, result)
  end

  def test_player_search__false
      team = SportsTeam.new("Rangers", ["Laudrup", "Gazza", "McCoist"], "Walter Smith", 0)
      result = team.player_search("Greg")
      assert_equal(false, result)
  end

  def test_team_win
    team = SportsTeam.new("Rangers", ["Laudrup", "Gazza", "McCoist"], "Walter Smith", 0)
    team.win
    assert_equal(3, team.points)
  end

  def test_team_loose
    team = SportsTeam.new("Rangers", ["Laudrup", "Gazza", "McCoist"], "Walter Smith", 0)
    team.loose
    assert_equal(0, team.points)
  end

end
