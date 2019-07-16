require 'pry'
require 'csv'

class Game
  attr_reader :id, :season, :type, :date_time, :away_team_id, :home_team_id,
  :away_goals, :home_goals, :outcome, :home_rink_side_start, :venue,
  :venue_link, :venue_time_zone_id, :venue_time_zone_offset, :venue_time_zone_tz

  def initialize(id, season, type, date_time, away_team_id, home_team_id,
    away_goals, home_goals, outcome, home_rink_side_start, venue,
    venue_link, venue_time_zone_id, venue_time_zone_offset, venue_time_zone_tz)

    @id = id
    @season = season
    @type = type
    @date_time = date_time
    @away_team_id = away_team_id
    @home_team_id = home_team_id
    @away_goals = away_goals
    @home_goals = home_goals
    @outcome = outcome
    @home_rink_side_start = home_rink_side_start
    @venue = venue
    @venue_link = venue_link
    @venue_time_zone_id = venue_time_zone_id
    @venue_time_zone_offset = venue_time_zone_offset
    @venue_time_zone_tz = venue_time_zone_tz
  end

  def self.create_game
    File.readlines('../data/game.csv').map do |game|
      binding.pry
      Game.new(game)
    end
  end

  binding.pry





end
