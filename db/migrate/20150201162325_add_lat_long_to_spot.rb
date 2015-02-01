class AddLatLongToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :lattitude, :string
    add_column :spots, :longditude, :string
    change_column :spots, :description, :text
  end
end
