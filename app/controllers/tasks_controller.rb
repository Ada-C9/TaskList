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
    task = Task.new(task_params)
    if task.save
      redirect_to tasks_path
    end

  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    task = Task.find_by(id: params[:id])
    task.update!(task_params)
    if task.save
      redirect_to task_path
    else
      render :edit
    end
  end

  def mark_complete
    task = Task.find_by(id: params[:id])
    task.completed = true
    task.save
    if task.save
      redirect_to tasks_path
    else
      render :show
    end
  end

  def delete
    id = params[:id]
    @task = Task.find(id)
    @task.destroy
  end

  private

  def task_params
    return params.require(:task).permit(:title, :description, :due_date, :completed)
  end
end
