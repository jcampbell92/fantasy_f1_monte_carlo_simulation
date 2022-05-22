class AddFastestToResults < ActiveRecord::Migration[6.1]
  def change
    add_column :results, :fastest, :boolean
  end
end
