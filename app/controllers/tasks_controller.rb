class TasksController < ApplicationController

  def index

    @tasks = Task.all
  end

  def show
    task_id = params[:id]
    @task = Task.find(task_id)
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    new_task = params[:task]

    task = Task.new
    task.title = new_task[:name]
    task.description = new_task[:description]
    task.priority = new_task[:priority]
    task.due_date = new_task[:due_date]
    task.status = params[:status]

    if task.save
      redirect_to :tasks
    end
  end

  def update
    new_task = params[:task]
    task = Task.find(params[:id])

    task.assign_attributes(
      name: new_task[:name],
      description: new_task[:description],
      priority: new_task[:priority],
      due_date: new_task[:due_date],
      status: new_task[:status]
    )

    if task.save
      redirect_to task_path(task)
    end
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to tasks_path
  end
end
