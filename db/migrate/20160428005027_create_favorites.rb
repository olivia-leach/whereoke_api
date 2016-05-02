class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :profile, index: true, foreign_key: true
      t.references :bar, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_index :favorites, [:bar_id, :profile_id], unique: true
  end
end
