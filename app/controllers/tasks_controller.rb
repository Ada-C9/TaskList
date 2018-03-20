class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
  end

  def edit
  end

  def destroy
    id = params[:id]
    @task = Task.find(id)
    @task.destroy
  end
end
