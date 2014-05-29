class AddLocationIdToPieces < ActiveRecord::Migration
  def change
    add_column :pieces, :location_id, :integer
    add_index :pieces, :location_id
  end
end
