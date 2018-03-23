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
    # raw_task = params[:task]

    task = Task.find(params[:id])
    task.assign_attributes(task_params)
    # task.name = raw_task[:name]
    # task.description = raw_task[:description]
    # task.due_date = raw_task[:due_date]
    # task.complete = raw_task[:complete]

    if task.save
      redirect_to task_path
    end
  end

  def destroy
    task = Task.destroy(params[:id])
    redirect_to tasks_path
  end

  def completed
    task = Task.find(params[:id])
    # task.assign_attributes(task_params)
    task.complete = true
    task.complete_date = Date.today

      if task.save
        redirect_to task_path
      end
  end

  private

  def task_params
    return params.require(:task).permit(:name, :description, :due_date, :complete_date, :complete)
  end
end
