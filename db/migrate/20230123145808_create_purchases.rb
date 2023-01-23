class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.integer :quantity
      t.decimal :total_amount
      t.string :currency

      t.timestamps
    end
  end
end
