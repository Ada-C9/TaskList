require 'date'
class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task= Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
  task = Task.new
  task.name = params[:task][:name]
  task.completion_date = params[:task][:completion_date]
  task.description = params[:task][:description]
  if task.save
    redirect_to tasks_path
  else
    render :new
  end

  end

  def edit
      @task = Task.find_by(id: params[:id])
  end

  def update
    @task = Task.find_by(id: params[:id])
  if !@task.nil?
    @task.name = params[:task][:name]
    @task.completion_date = params[:task][:completion_date]
    @task.description = params[:task][:description]

    if @task.save
      redirect_to tasks_path
    else
      render :edit
    end
  else
    redirect_to tasks_path
  end
  end

  def destroy
    id = params[:id]
    @task = Task.find(id)
    if @task.destroy
      redirect_to tasks_path
    end
  end

  def complete
    @task = Task.find_by(id: params[:id])
    @task.actual_completion_date = DateTime.now
    if @task.save
      redirect_to tasks_path
    end
end
end
