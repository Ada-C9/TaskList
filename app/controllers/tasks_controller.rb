class TasksController < ApplicationController

  def index

    @tasks = Task.all

  end


  def new
    @task = Task.new
  end

  def create

    task = Task.new
    task.assign_attributes(task_params)

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

    task = Task.find(params[:id])
    task.assign_attributes(task_params)


    if task.save
      redirect_to task_path(task)
    end

  end

  def completed

    task = Task.find(params[:id])

    if task.completed
      task.completed = false
      task.completion_date = nil

    else
      task.completed = true
      task.completion_date = Date.today

    end

    if task.save
      redirect_to tasks_path
    end

  end

  def destroy
    Task.destroy(params[:id])
    redirect_to tasks_path
  end

private

  def task_params
    return params.require(:task).permit(:name, :description, :completion_date)
  end


end
