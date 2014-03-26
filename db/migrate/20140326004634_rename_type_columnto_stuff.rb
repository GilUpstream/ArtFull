class RenameTypeColumntoStuff < ActiveRecord::Migration
  def change
    rename_column :pieces, :type, :stuff
  end
end
