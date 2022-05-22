class AddTeammateToDriver < ActiveRecord::Migration[6.1]
  def change
    add_reference :drivers, :teammate
  end
end
