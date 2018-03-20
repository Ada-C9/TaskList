class TasksController < ApplicationController

  def index
    @tasks = Tasks.all
  end

  def show
    id = params[:id]
    @task = Tasks.all.find { |task| task.id == id.to_i }
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def mark_complete
  end

  def destroy
    id = params[:id]
    @task = Tasks.all.find { |task| task.id == id.to_i }
    @task.destroy
  end
end
