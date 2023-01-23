class AddProductIdAndUserIdToPurchases < ActiveRecord::Migration[6.1]
  def change
    add_column :purchases, :product_id, :integer
    add_column :purchases, :user_id, :integer
  end
end
