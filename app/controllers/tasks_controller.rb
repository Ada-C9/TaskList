class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    # Switched to Rails form_for and created params structure
    task_data = params[:task]

    task = Task.new

    task.assign_attributes(task(:params))

    if task.save
      redirect_to tasks_path
    end
  end

  def show
    # Figure out which book the user wanted
    task_id = params[:id]


    # Load it from the DB
    # Save it in an instance variable for the view
    @task = Task.find(task_id)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task_data = params[:task]

    task = Task.find(params[:id])

    task.assign_attributes(task(:params))

    if task.save
      redirect_to tasks_path
    end
  end

  def toggle_completed
    @task = Task.find(params[:id])

    if @task.status
      @task.update(status: false)
    else
      @task.update(status: true)
    end

    redirect_to tasks_path
  end

  def destroy

    Task.destroy(params[:id])

    redirect_to tasks_path
  end

  private
  def task_params
    return params.require(:task).permit(:name, :description, :complete_by, :status)
  end

end
