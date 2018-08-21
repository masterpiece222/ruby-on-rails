class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :year
      t.string :genre
      t.decimal :price

      t.timestamps
    end
  end
end
