class AddReferencesToResults < ActiveRecord::Migration[6.1]
  def change
    add_reference :results, :driver, foreign_key: true
    add_reference :results, :race, foreign_key: true
    add_reference :drivers, :team, foreign_key: true
  end
end
