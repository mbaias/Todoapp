class AddDefaultValueToCompleteAttribute < ActiveRecord::Migration[5.0]
  def change
  	change_column_default :todos, :completed, true
  end
end
