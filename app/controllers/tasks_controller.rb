class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    id = params[:id]
    @task = Task.find(id)
    @task.destroy
  end
end
