class CreateCheckIns < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.references :user, index: true
      t.references :piece, index: true

      t.timestamps
    end
  end
end
