class RenameProcesses < ActiveRecord::Migration
  def change
    rename_table :processes, :jobs
  end
end
