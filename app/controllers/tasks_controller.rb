class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    name = params[:task][:name]

    raw_task = params[:task]

    task = Task.new
    task.name = raw_task[:name]
    task.description = raw_task[:description]
    task.duedate = raw_task[:duedate]
    task.complete = raw_task[:complete]

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
    raw_task = params[:task]

    task = Task.find(params[:id])
    task.name = raw_task[:name]
    task.description = raw_task[:description]
    task.duedate = raw_task[:duedate]
    task.complete = raw_task[:complete]

    if task.save
      redirect_to task_path
    end
  end

  def destroy
    task = Task.find(:id)
    task.destroy
  end

end
