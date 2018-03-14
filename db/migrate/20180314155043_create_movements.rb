class CreateMovements < ActiveRecord::Migration[5.1]
  def change
    create_table :movements do |t|
      t.references :harbour, foreign_key: true
      t.references :type, foreign_key: true
      t.date :date
      t.string :tot_imp_exp
      t.string :terminal
      t.string :pol_pod
      t.string :volume

      t.timestamps
    end
  end
end
