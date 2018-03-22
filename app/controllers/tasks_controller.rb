class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
  end

  def new
  end

  def show
    task_id = params[:id]
    # Load it from the DB
    # Save it in an instance variable for the view
    @task = Task.find(task_id)
  end

  def edit
  end

  def destroy
  end

end
