class DropTableProcessFiles < ActiveRecord::Migration
  def change
    drop_table :process_files
  end
end
