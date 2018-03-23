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
    task.completion_date = raw_task[:completion_date]

    if task.save
      redirect_to tasks_path
    end

  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
