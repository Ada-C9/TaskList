class TasksController < ApplicationController

  TASK_LIST = [
    "Wash dog", "Make dinner", "Call mom"
  ]

  def index
    @tasks = TASK_LIST
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def complete
  end

  def destroy
  end
end
