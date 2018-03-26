class TasksController < ApplicationController

  def index
    @tasks = Task.all.order(:id)
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
    task.save ? (redirect_to tasks_path) : (render :new)
  end

  def edit
    Task.find_by(id: params[:id]) ? (@task = Task.find_by(id: params[:id])) : (redirect_to tasks_path)
  end

  def update
    task = Task.find_by(id: params[:id])
    if !task.nil?
      task.update(task_params) ? (redirect_to tasks_path) : (render :edit)
    end
  end

  def destroy
    task = Task.find(params[:id])

    if !task.nil?
      task.destroy
      redirect_to tasks_path
    end
  end

  def complete
    task = Task.find_by(id: params[:id])

    task.completed_date.nil? ? task.update(completed_date: Date.today.to_s) : task.update(completed_date: nil)

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end

end
