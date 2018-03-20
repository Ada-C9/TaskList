class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
  end

  def show
    # Figure out which book the user wanted
    task_id = params[:id]


    # Load it from the DB
    # Save it in an instance variable for the view
    @tasks = Task.find(task_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
