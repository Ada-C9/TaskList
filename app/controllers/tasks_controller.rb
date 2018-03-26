require 'pry'

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
    @task = Task.find(params[:id])
  end

  def update
    update_info = params[:task]
    task = Task.find(params[:id])

    task.assign_attributes(task_params)

    if task.save
      redirect_to tasks_path
    end
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to tasks_path
  end

  def completion_status
    @task = Task.find(params[:id])

    @task[:completion_status] = true

    @task[:completion_date] = Time.now.getutc

    @task.save

    redirect_to tasks_path
  end

  private

  def task_params
    return params.require(:task).permit(:name, :description, :completion_date)
  end

end
