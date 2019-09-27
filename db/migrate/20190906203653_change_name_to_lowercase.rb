class ChangeNameToLowercase < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :Supplier_Id, :supplier_id
  end
end