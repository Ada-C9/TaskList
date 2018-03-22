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
    task.completion_date = params[:task][:completion_date]
    task.description = params[:task][:description]
    if task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
  id = params[:id]
  @task = Task.find(id)
  @task.update(
    name:params[:task][:name],
    description: params[:task][:description],
    completion_date: params[:task][:completion_date])
  end

  def destroy
  id = params[:id]
    @task = Task.find(id)
    @task.destroy
  end

end
