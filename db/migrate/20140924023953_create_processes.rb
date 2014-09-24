class CreateProcesses < ActiveRecord::Migration
  def change
    create_table :processes do |t|
	t.string :filepath
	t.text :result
	t.string :p_id	

	t.timestamps
    end
  end
end
