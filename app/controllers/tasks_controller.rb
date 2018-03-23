class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(:priority, :created_at)
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    if task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    id = params[:id]
    @task = Task.find(id)
  end

  def update
    id = params[:id]
    task = Task.find(id)
    # task.name = params[:task][:name]
    # task.description = params[:task][:description]
    # task.priority = params[:task][:priority]
    if task.update(task_params)
      redirect_to task_path
    else
      render :edit
    end
  end

  def destroy
    id = params[:id]
    task = Task.find(id)
    if !task.nil?
      if task.destroy
      end
    end
    redirect_to tasks_path
  end

  def complete
    id = params[:id]
    task = Task.find(id)
    task.completed = !(task.completed)
    if task.completed
      task.completion_date = task.updated_at.to_date.to_s
    else
      task.completion_date = nil
    end
    if task.save
      redirect_to tasks_path
    else
      render :index
    end
  end

  private

  def task_params
    params.require(:task).require(:name, :description, :priority)
  end
end
