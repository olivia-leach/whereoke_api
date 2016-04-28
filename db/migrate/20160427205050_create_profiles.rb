class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :username
      t.text :fav_song
      t.text :quote
      t.text :pic
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
