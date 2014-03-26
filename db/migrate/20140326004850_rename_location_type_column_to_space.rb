class RenameLocationTypeColumnToSpace < ActiveRecord::Migration
  def change
    rename_column :locations, :type, :space
  end
end
