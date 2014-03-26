class RenameArtistColumnToMaker < ActiveRecord::Migration
  def change
    rename_column :pieces, :artist, :maker
  end
end
