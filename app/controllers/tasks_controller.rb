class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    my_task = params[:id]

    @task = Task.find(my_task)
  end
end
