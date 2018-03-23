class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    new_task = Task.new(name: params[:name], description: params[:description], completion_date: params[:completion_date])

    if new_task.save
      redirect_to tasks_path
    end

  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
