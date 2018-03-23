class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(:completed, :priority, :created_at)
  end

  def show
    @task = Task.find_by(id: params[:id])
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
    @task = Task.find_by(id: params[:id])
  end

  def update
    task = Task.find_by(id: params[:id])
    if task.update(task_params)
      redirect_to task_path(task.id)
    else
      render :edit
    end
  end

  def destroy
    task = Task.find_by(id: params[:id])
    if !task.nil?
      if task.destroy
      end
    end
    redirect_to tasks_path
  end

  def complete
    task = Task.find(params[:id])
    if !task.nil?
      task.completed = !(task.completed)
    end
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
    return params.require(:task).permit(:name, :description, :priority)
  end
end
