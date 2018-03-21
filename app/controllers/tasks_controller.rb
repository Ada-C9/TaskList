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
    @task = Task.new
    @task.title = params[:task][:title]
    @task.duedate = params[:task][:duedate]
    @task.description = params[:task][:description]
    if @task.save
      redirect_to tasks_path
    end

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
