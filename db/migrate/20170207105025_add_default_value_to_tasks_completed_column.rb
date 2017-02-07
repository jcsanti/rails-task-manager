class AddDefaultValueToTasksCompletedColumn < ActiveRecord::Migration[5.0]
  def change
    change_column_null :tasks, :completed, false
  end
end
