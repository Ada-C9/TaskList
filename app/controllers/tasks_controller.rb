class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    raw_task = params[:task]

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
    raw_task = params[:task]

    task = Task.find(params[:id])
    # task.name = raw_task[:name]
    # task.start_date = raw_task[:start_date]
    # task.description = raw_task[:description]
    # task.completion_date = raw_task[:completion_date]

    task.assign_attributes(task_params)

    if task.save
      redirect_to task_path(task)
    end
  end

  def destroy
    # find first
    # check the result of destroy
    Task.destroy(params[:id])

    redirect_to tasks_path
  end

  def completed
    task = Task.find(params[:id])

    task.mark_complete = true
    task.completion_date = Date.today

    if task.save
      redirect_to task_path
    end
  end


  private
  def task_params
    return params.require(:task).permit(:name, :start_date, :description, :completion_date)
  end
end
