class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    raw_task = params[:task]
    task = Task.new
    task.name = raw_task[:name]
    task.description = raw_task[:description]

    if task.save
      redirect_to tasks_path
    end
  end

  def show
    task_id = params[:id]

    @task = Task.find(task_id)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    update_info = params[:task]
    task = Task.find(params[:id])
    task.name = update_info[:name]
    task.description = update_info[:description]
    task.completion_date = update_info[:completion_date]

    if task.save
      redirect_to tasks_path
    end
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to tasks_path
  end

end
