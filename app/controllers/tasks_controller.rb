class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create

    # raw_task = params[:task]
    task = Task.new
    # task.name = raw_task[:name]
    # task.description = raw_task[:description]
    # task.completion_date = raw_task[:completion_date]
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
    # raw_task = params[:task]

    task = Task.find(params[:id])

    # task.name = raw_task[:name]
    # task.description = raw_task[:description]
    # task.completion_date = raw_task[:completion_date]
    task.assign_attributes(task_params)

    if task.save
      redirect_to task_path(task)
    end
  end

  def destroy
    Task.destroy(params[:id])

    redirect_to tasks_path
  end

  def complete
    task = Task.find(params[:id])
    task.complete!
    if task.save
      redirect_to task_path(task)
    end
  end

  def incomplete
    task = Task.find(params[:id])
    task.incomplete!
    if task.save
      redirect_to task_path(task)
    end

  end

  private
  def task_params
    return params.require(:task).permit(:name, :description, :completion_date)
  end
end
