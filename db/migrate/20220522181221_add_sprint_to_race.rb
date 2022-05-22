class AddSprintToRace < ActiveRecord::Migration[6.1]
  def change
    add_column :races, :sprint, :boolean
  end
end
