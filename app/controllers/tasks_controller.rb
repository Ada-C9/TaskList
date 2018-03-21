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
      redirect_to '/tasks'
    end
  end

  def show
    task_id = params[:id]

    @task = Task.find(task_id)
  end

  def edit
  end

  def update
  end

  def delete
  end

end
