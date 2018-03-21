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
    id = params[:id]
    @task = Task.find(id)
  end

  def create
    @task = Task.new
    @task.name = params[:name]
    @task.description = params[:description]
    @task.save
  end

  def update

  end

  def destroy
    id = params[:id]
    @task = Task.find(id)
    @task.destroy
  end
end
