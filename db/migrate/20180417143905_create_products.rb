class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.string :name_kana, null: false
      t.integer :price, null: false
      t.integer :purchase_cost, null: false
      t.boolean :available, null: false

      t.timestamps
    end
  end
end
