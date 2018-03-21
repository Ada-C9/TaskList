class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @featured = @tasks.select { |task| task.priority == 1 }
  end

  def all
    @tasks = Task.order(:priority)
  end

  def show
    id = params[:id]
    @task = Task.find(id)
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
    id = params[:id]
    @task = Task.find(id)
    @task.destroy
  end
end
