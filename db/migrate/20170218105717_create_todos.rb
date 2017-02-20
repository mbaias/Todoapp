class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
    	t.integer :user_id
    	t.string :title
    	t.string :body
    	t.boolean :completed
      t.timestamps
    end
  end
end
