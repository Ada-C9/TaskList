class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
  end

  def show
    task_id = param[:id]

    @task = Task.find(task_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
