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
      redirect_to "/tasks"
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
      redirect_to task
    end
  end

  def complete
    @task = Task.find(params[:id])
    @task.completion_date = Date.today
    @task.save

    if @task.save
      redirect_to tasks_path
    end
  end

  def uncomplete
    @task = Task.find(params[:id])
    @task.completion_date = nil
    @task.save

    if @task.save
      redirect_to tasks_path
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    if @task.destroy
      redirect_to tasks_path
    end
  end

  private
  def task_params
    #getting error with params.require(:task).permit whyyyyy
    return params.require(:task).permit(:name, :description, :completion_date)
  end

end
