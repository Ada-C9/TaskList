class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)

    if task.save
      redirect_to tasks_path
    end
  end

  def show
    task_id = params[:id]
    @task = Task.find(task_id)
  end

  def edit
    @task = task.find(params[:id])
  end

  def update
    task = task.find(params[:id])
    task.assign_attributes(task_params)

    if task.save
      redirect_to task_path(task)
    end
  end

  def destroy
    Task.destroy(params[:id])
    # redirect_to tasks_path
  end

  def complete
    task = Task.find(params[:id])
    task.complete! # <-- this method will modify the objects
    if task.save
      redirect_to tasks_path
    end
  end

  def uncomplete
    task = Task.find(params[:id])
    task.uncomplete!   # <-- this method will modify the objects
    if task.save
      redirect_to tasks_path
    end
  end

    #TODO
    # make the button for uncomplete???
    # IF it doesn't render you might need to redirect and make a new template for it in the views

  private
  def task_params
    return params.require(:task).permit(:name, :description, :completion_date, :created_at, :updated_at)
  end

end
