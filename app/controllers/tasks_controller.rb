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
    task.due_date = params[:task][:due_date]

    if task.save
      redirect_to tasks_path
    end

  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    task = Task.find_by(id: params[:id])
    task.title = params[:task][:title]
    task.description = params[:task][:description]
    task.due_date = params[:task][:due_date]

    if task.save
      redirect_to task_path
    else
      render :edit
    end
  end

  def mark_complete
  end

  def delete
    id = params[:id]
    @task = Task.find(id)
    @task.destroy
  end
end
