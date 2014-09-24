class CreateProcessFiles < ActiveRecord::Migration
  def change
    create_table :process_files do |t|

      t.timestamps
    end
  end
end
