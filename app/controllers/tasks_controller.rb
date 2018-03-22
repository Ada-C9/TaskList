class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @tasks = Task.find(id)
  end

  def new
    @tasks = Task.new
  end

  def create
    task = Task.new
    task.task_name = params[:task][:task_name]
    task.description = params[:task][:description]
    if task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.task_name = params[:task][:task_name]
    task.description = params[:task][:description]
    if task.save
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy
    id = params[:id]
    @tasks = Task.find(id)
    @tasks.destroy
  end

  def mark_complete

  end
end
