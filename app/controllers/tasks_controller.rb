class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    new_task = params[:task]

    task = Task.new
    task.name = new_task[:name]
    task.details = new_task[:details]
    task.complete = new_task[:complete]

    if task.save
      redirect_to '/tasks'
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
    new_task = params[:task]

    task = Task.find(params[:id])
    task.name = new_task[:name]
    task.details = new_task[:details]
    task.complete = new_task[:complete]

    if task.save
      redirect_to tasks_path(task)
    end
  end

    def destroy
      Task.destroy(params[:id])
      redirect_to tasks_path
    end

end
