class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    to_find_id = params[:id].to_i
    @task = Task.all.find { |task| task.id == to_find_id }
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    redirect_to tasks_path if @task.save
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    @task = Task.find_by(id: params[:id])
    @task.update(task_params) ? (redirect_to task_path(@task.id)) : (render :edit)
  end

  def mark_complete
    @task = Task.find(params[:id])
    @task.update(status: "Complete")
    @task.save
    redirect_to task_path(@task.id)
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to tasks_path
  end


  private

  def task_params
    return params.require(:task).permit(:name, :status, :description, :due)
  end
end
