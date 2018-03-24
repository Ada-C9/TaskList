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
    task = Task.new(task_params)

    if task.save
      redirect_to tasks_path
    end
  end

  def update
    task = Task.find(params[:id])
    task.assign_attributes(task_params)

    if task.save
      redirect_to task_path(task)
    end
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to tasks_path
  end

  def mark
    task = Task.find(params[:id])
    if task.status == "Complete"
      task.assign_attributes(status: "In Progress")
    else
      task.assign_attributes(status: "Complete", completion_date: Date.today)
    end

    if task.save
      redirect_to tasks_path
    end
  end

  private
  def task_params
    return params.require(:task).permit(:name, :description, :priority, :due_date, :status, :completion_date)
  end
end
