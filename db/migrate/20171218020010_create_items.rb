class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :image_url
      t.string :title
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
