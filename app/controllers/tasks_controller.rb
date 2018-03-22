class TasksController < ApplicationController


  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new
    task.task = params[:task][:task]
    task.description = params[:task][:description]
    task.completed = "no"  #default answer is no
    if task.save # == true - it worked!
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    task = Task.find_by(id: params[:id])
    task.task = params[:task][:task]
    task.description = params[:task][:description]
    task.completed = params[:task][:completed]
    if task.save
      redirect_to task_path
    else
      render :edit
    end
  end

  def destroy
    id = params[:id]
    @task = Task.find(id)
    @task.destroy
    redirect_to tasks_path
  end

end
