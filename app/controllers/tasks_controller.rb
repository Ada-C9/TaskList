class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    task.status = :TODO

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
      redirect_to '/tasks'
    end
  end

  def destroy
    Task.destroy(params[:id])

    redirect_to tasks_path
  end

  def mark_complete
    task = Task.find(params[:id])

    if task.status == 'COMPLETE'
      task.status = :TODO
      task.completion_date = nil
    elsif task.status == 'TODO'
      task.status = :COMPLETE
      task.completion_date = DateTime.now
    end


    if task.save
      redirect_to '/tasks'
    end
  end

  private

  def task_params
    return params.require(:task).permit(:name, :description, :priority)
  end
end
