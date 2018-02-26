class TodosController < ApplicationController
    def index
        todos = Todo.all
        render JSON todos, status: 200
    end
    
    def show
       todo = Todo.find(params[:id]) 
       render json: todo, status: 200
    end
    
    def create 
        todo = Todo.new[params_todo]
        if todo.save
            render json: todo, status: 201
        else
            render json: todo.errors, status: 500
        end
    end
    
    def params_todo
        params.require(:todo).permit(:name, :description, :duration)
    end
end
