class ChangeDefaultValueToFalseForCompleted < ActiveRecord::Migration[5.0]
  def change
  	change_column_default :todos, :completed, false
  end
end
