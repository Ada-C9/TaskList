class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find_by(id: params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new
    task.name = params[:task][:name]
    task.description = params[:task][:description]
    task.completion_date = params[:task][:completion_date]

    if task.save
      redirect_to show_tasks_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    task = Task.find_by(id: params[:id])
    task.name = params[:task][:name]
    task.completion_date = params[:task][:completion_date]
    task.description = params[:task][:description]
    if task.save
      redirect_to show_tasks_path
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    if @task.destroy
      redirect_to show_tasks_path
    else
      render :destroy
    end
  end
end
