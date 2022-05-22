class AddPointsToSprintResults < ActiveRecord::Migration[6.1]
  def change
    add_column :sprint_results, :points, :integer
  end
end
