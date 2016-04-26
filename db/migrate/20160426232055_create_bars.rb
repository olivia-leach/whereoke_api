class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.text :name
      t.text :nights
      t.text :time
      t.text :neighborhood
      t.text :address
      t.text :city
      t.text :state
      t.text :zip

      t.timestamps
    end
  end
end
