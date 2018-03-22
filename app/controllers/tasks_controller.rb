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
    task = Task.new
    task.name = params[:task][:name]
    task.description = params[:task][:description]
    task.completed = false
    if task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    id = params[:id]
    @task = Task.find(id)
  end

  def update
    id = params[:id]
    task = Task.find(id)
    task.name = params[:task][:name]
    task.description = params[:task][:description]
    if task.save
      redirect_to task_path
    else
      render :edit
    end
  end

  def destroy
  end

  def complete
  end
end
