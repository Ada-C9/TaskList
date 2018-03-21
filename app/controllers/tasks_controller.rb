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
  end

  def update
  end

  def destroy
    id = params[:id]
    @task = Task.find(id)
    @task.destroy
  end

end
