class ChangeVolumeIntoInteger < ActiveRecord::Migration[5.1]
  def change
    remove_column :movements, :volume
    add_column :movements, :volume, :integer
  end
end
