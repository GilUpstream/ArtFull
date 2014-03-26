class RemoveCheckInsTable < ActiveRecord::Migration
  def change
    drop_table :checkins
  end
end
