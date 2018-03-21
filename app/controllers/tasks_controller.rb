class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @tasks = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new
    task.title = params[:task][:title]
    task.description = params[:task][:description]
    task.completion_date = params[:task][:completion_date]

    if task.save
      redirect_to tasks_path
    end

  end

  def edit
  end

  def mark_complete
  end

  def delete
    id = params[:id]
    @task = Task.find(id)
    @task.destroy
  end
end
