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

  def create
    @task = Task.new
    @task.name = params[:task][:name]
    @task.description = params[:task][:description]
    redirect_to tasks_path if @task.save
  end

  def edit
  end

  def update
  end

  def destroy
    id = params[:id]
    @task = Task.find(id)
    @task.destroy
      redirect_to tasks_path
  end

  def complete
  end
end
