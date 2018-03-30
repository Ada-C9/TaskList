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

  def create
    raw_task = params[:task]

    task = Task.new
    task.name = raw_task[:name]
    task.time_of_day = raw_task[:time_of_day]
    task.completed = raw_task[:completed]

    if task.save
      redirect_to '/tasks'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    raw_task = params[:task]
    task = Task.find(params[:id])

    task.update_attributes(time_of_day: raw_task[:time_of_day], name: raw_task[:name], completed: raw_task[:completed])

    if task.save
      redirect_to task_path(task)
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to '/tasks'
    flash[:alert] = "Task deleted"
  end

  private
  def task_params
    params.require(:task).permit(:time_of_day, :name, :completed)
  end
end
