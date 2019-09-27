class RemoveProductIdFromImages < ActiveRecord::Migration[6.0]
  def change
    remove_column :images, :product_id, :integer
  end
end