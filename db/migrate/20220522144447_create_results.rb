class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.integer :qualifying
      t.integer :start_position
      t.integer :finish_position
      t.integer :points_earned

      # t.references :races, foreign_key: true
      # t.references :drivers, foreign_key: true
      t.timestamps
    end
  end
end
