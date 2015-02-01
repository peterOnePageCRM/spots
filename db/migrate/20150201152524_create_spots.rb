class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :title
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
