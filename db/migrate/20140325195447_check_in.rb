class CheckIn < ActiveRecord::Migration
  def change
    create_join_table :users, :pieces, :table_name => :checkins
  end
end
