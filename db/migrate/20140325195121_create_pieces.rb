class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :artist
      t.string :type
      t.string :time_period

      t.timestamps
    end
  end
end
