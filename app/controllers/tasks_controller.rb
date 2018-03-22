class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    my_task = params[:id]

    @task = Task.find(my_task)
  end
  def new
    @task = Task.new
  end

  def create
    incoming_task = params[:task]
    new_task = Task.new
    new_task.name = incoming_task[:name]
    new_task.description = incoming_task[:description]
    new_task.completion = incoming_task[:completion]
    new_task.priority = incoming_task[:priority]

    if new_task.save
      redirect_to '/tasks'
    end 

  end
end
