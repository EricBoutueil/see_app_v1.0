class ChangeDateIntoYearInteger < ActiveRecord::Migration[5.1]
  def change
    remove_column :movements, :date
    add_column :movements, :year, :integer
  end
end
