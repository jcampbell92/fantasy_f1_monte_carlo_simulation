class AddReferenceToSprintResults < ActiveRecord::Migration[6.1]
  def change
    add_reference :sprint_results, :driver, foreign_key: true
    add_reference :sprint_results, :race, foreign_key: true
  end
end
