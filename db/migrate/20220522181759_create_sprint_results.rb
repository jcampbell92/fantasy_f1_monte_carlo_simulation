class CreateSprintResults < ActiveRecord::Migration[6.1]
  def change
    create_table :sprint_results do |t|
      t.integer :start_position
      t.integer :finish_position
      t.timestamps
    end
  end
end
