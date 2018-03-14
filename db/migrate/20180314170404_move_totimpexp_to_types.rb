class MoveTotimpexpToTypes < ActiveRecord::Migration[5.1]
  def change
    remove_column :movements, :tot_imp_exp
    add_column :types, :tot_imp_exp, :integer
  end
end
