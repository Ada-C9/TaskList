class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    # raw_task = params[:task]
    #
    # task = Task.new
    # task.name = raw_task[:name]
    # task.description = raw_task[:description]
    # task.completion_date = raw_task[:completion_date]
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

  # def update
  # end

  # def destroy
  # end

  private
  def task_params
    return params.require(:task).permit(:name, :description, :completion_date)
  end

end
