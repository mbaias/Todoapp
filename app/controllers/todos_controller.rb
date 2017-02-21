class TodosController < ApplicationController
	def new
		@todo = Todo.new
	end

	def create
		@todo = current_user.todos.build(todo_params)

		respond_to do |f| 
			if @todo.save
				f.html {redirect_to todos_path}
				f.js {redirect_to todos_path}
			else
				f.html {render :new}
				f.js {render :new}
			end
		end

	end

	def index
		@incomplete_todos = Todo.where(completed: false)
		@complete_todos = Todo.where(completed: true)
		@todo = Todo.new
	end

	def destroy
		@todo = Todo.find(params[:id])
		@todo.destroy
		flash[:danger] = "Your task has been deleted"
		respond_to do |f|
			f.html {redirect_to todos_path}
			f.js
		end
	end

	def update
		@todo = Todo.find(params[:id])
		@todo.update_attributes!(todo_params)

		respond_to do |f|
			f.html {redirect_to todos_path}
			f.js
		end
	end

	
	private
		def todo_params
			params.require(:todo).permit(:title, :body, :image, :user_id, :completed)
		end
end