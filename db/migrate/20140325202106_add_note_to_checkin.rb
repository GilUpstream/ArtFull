class AddNoteToCheckin < ActiveRecord::Migration
  def change
    add_column :check_ins, :note, :string
  end
end
