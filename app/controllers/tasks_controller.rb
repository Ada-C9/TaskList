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
      redirect_to '/tasks'
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end


  def update
    raw_task = params[:task]
    id = params[:id]

    task = Task.find(id)

    task.assign_attributes(
      name: raw_task[:name],
      description: raw_task[:description],
      completion_date: raw_task[:completion_date]
    )

    if task.save
      redirect_to task_path(task.id)
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.destroy
      redirect_to root_path
    end
  end

end
