class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :total_points

      # t.references :teams, foreign_key: true
      t.timestamps
    end
  end
end
