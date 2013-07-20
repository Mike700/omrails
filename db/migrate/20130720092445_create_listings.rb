class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :vehicle
      t.float :rate

      t.timestamps
    end
  end
end
