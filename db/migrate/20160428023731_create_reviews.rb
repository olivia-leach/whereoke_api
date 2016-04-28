class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :profile, index: true, foreign_key: true
      t.references :bar, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end