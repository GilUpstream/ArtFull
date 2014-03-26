class AddDefaultValuesToPieces < ActiveRecord::Migration
  def change
    change_column :pieces, :title, :string, :default => "Title Unknown"
    change_column :pieces, :artist, :string, :default => "Maker Unknown"
  end
end
