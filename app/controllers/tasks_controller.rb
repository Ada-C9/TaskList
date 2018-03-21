class TasksController < ApplicationController
  def index
    @tasks = task.all

  end

  def new

  end

  def create

  end

  def show
    #allows the task I want to be identified
    task_id = params[:id]

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
