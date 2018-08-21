class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :county
      t.string :email
      t.integer :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
