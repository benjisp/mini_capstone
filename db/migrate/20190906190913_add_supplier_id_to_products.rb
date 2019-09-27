class AddSupplierIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :Supplier_Id, :integer
  end
end