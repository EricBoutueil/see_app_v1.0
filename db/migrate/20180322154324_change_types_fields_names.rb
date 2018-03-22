class ChangeTypesFieldsNames < ActiveRecord::Migration[5.1]
  def change
    rename_column :types, :name, :label
    rename_column :types, :tot_imp_exp, :flow
  end
end
