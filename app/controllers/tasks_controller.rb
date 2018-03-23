class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(:id)
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
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.assign_attributes(task_params)

    if task.save
      redirect_to task_path(task)
    end
  end

  def destroy
  end

  private
  def task_params
    params.require(:task).permit(:name, :description, :completion_date)
  end

end
