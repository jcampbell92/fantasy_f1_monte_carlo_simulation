class Result < ApplicationRecord
  belongs_to :race
  belongs_to :driver


  private

  def drivers
    @drivers = Driver.all
  end

  def results(race)
    @results = Result.where(race: race)
  end

  def qualifying_points(race)
    @drivers.each do |driver|
      driver_results = @results.where(driver: driver)
      race_results = driver_results.find(race)
      all_teammate_results = @results.where(driver: driver.teammate)
      teammate_results = all_teammate_results.find(race)
      if race_results.qualifying <= 10
        race_results.points_earned += 3
      elsif race_results.qualifying >= 11 && race_results.qualifying <= 15
        race_results.points_earned += 2
      elsif race_results.qualifying >= 16 &&  race_results.qualifying < 100
        race_results.points_earned += 1
      elsif race_results.qualifying == 101
        race_results.points_earned -= 5
      end
      if race_results.qualifying > teammate_results.qualifying
        race_results.points_earned += 2
      end
    end
    qualifying_position(race)
  end

  def qualifying_position(race)
    @drivers.each do |driver|
      driver_results = @results.where(driver: driver)
      race_results = driver_results.find(race)
        race_results.points_earned += (11 - race_results.qualifying)
    end
    race_points(race)
  end

  def race_points(race)
    @drivers.each do |driver|
      driver_results = @results.where(driver: driver)
      race_results = driver_results.find(race)
      all_teammate_results = @results.where(driver: driver.teammate)
      teammate_results = all_teammate_results.find(race)
      if race_results.finish_position < 101
        race_results.points_earned += 1
      end
      if race_results.finish_position > teammate_results.finish_position
        race_results.points_earned += 3
      end
      if race_results.fastest
        race_results.points_earned += 5
      end
      gained = 0
      gained += (2 * (race_results.start_position - race_results.finish_position))
      if gained > 10
        gained = 10
      elsif gained < -10
        gained = -10
      end
      race_results.points_earned += gained
    end
    race_position(race)
  end

  def race_position(race)
    @drivers.each do |driver|
      driver_results = @results.where(driver: driver)
      race_results = driver_results.find(race)
      if race_results.finish_position >= 10
        race_results.points_earned += (26 - race_results.finish_position)
      end
    end
    streaks(race)
  end

  def streaks(race)
    @drivers.each do |driver|
      driver_results = @results.where(driver: driver)
      race_results = driver_results.find(race)
      last_race = driver_results.find(race.id - 1)
      two_races_ago = driver_results.find(race.id - 2)
      three_races_ago = driver_results.find(race.id - 3)
      four_races_ago = driver_results.find(race.id -4)

      if driver_results.qualifying > 11 && last_race.qualifying > 11 && two_races_ago.qualifying > 11 && three_races_ago.qualifying > 11 && four_races_ago.qualifying > 11
        race_results.points_earned += 5
      end

      if driver_results.finish_position > 11 && last_race.finish_position > 11 && two_races_ago.finish_position > 11 && three_races_ago.finish_position > 11 && four_races_ago.finish_position > 11
        race_results.points_earned += 5
      end
    end
    sprint_points(race)
  end

  def sprint_points(race)
    SprintResult.points(race)
    SprintResult.sprint_position(race)
  end
end
