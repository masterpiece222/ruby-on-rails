class CreateOrderitems < ActiveRecord::Migration[5.1]
  def change
    create_table :orderitems do |t|
      t.integer :item_id
      t.string :title
      t.text :description
      t.integer :quantity

      t.timestamps
    end
  end
end
