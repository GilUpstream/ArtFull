class AddTimestampsToCheckin < ActiveRecord::Migration
  def change
    add_timestamps :checkins
  end
end
