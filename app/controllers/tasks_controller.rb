class TasksController < ApplicationController
  def index

    @tasks = Task.all.order(:date, :time)

  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)

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
    raw_task = params[:task]

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

  private
  def task_params
    return params.require(:task).permit(:to_do, :date, :time, :instructions)
  end
end
