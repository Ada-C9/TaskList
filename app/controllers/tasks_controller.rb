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

  def edit
    id = params[:id]
    @task = Task.find(id)
  end

  def create
    task = Task.new
    task.name = params[:task][:name]
    task.description = params[:task][:description]
    if task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def update

  end

  def destroy
    id = params[:id]
    @task = Task.find(id)
    if @task.destroy
      redirect_to tasks_path
    else
      render :new
    end
  end
end
