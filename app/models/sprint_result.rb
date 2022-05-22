class SprintResult < ApplicationRecord
  belongs_to :race
  belongs_to :driver

  def drivers
    @drivers = Driver.all
  end

  def results(race)
    @results = SpringResult.where(race: race)
  end

  def points(race)
    @drivers.each do |driver|
      driver_results = @results.where(driver: driver)
      race_results = driver_results.find(race)
      all_teammate_results = @results.where(driver: driver.teammate)
      teammate_results = all_teammate_results.find(race)
      if race_results.finish_position < 101
        race_results.points += 1
      end
      if race_results.finish_position > teammate_results.finish_position
        race_results.points += 2
      end
      if race_results.fastest
        race_results.points += 3
      end
      gained = 0
      gained += (1 * (race_results.start_position - race_results.finish_position))
      if gained > 5
        gained = 5
      elsif gained < -5
        gained = -5
      end
      race_results.points += gained
    end
  end

  def sprint_position(race)
    @drivers.each do |driver|
      driver_results = @results.where(driver: driver)
      race_results = driver_results.find(race)
      if race_results.finish_position >= 10
        race_results.points += (11 - race_results.finish_position)
      end
    end
  end

end
