class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.all.find { |task| task.id == id.to_i }
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    # @task.name = params[:task][:name]
    # @task.status = params[:task][:status]
    # @task.description = params[:task][:description]
    # @task.due = params[:task][:due]
    if @task.save
      redirect_to tasks_path
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    @task = Task.find_by(id: params[:id])
    redirect_to tasks_path if @task.nil?
    # @task.name = params[:task][:name]
    # @task.status = params[:task][:status]
    # @task.description = params[:task][:description]
    # @task.due = params[:task][:due]
    if @task.update(task_params)
      redirect_to task_path(@task.id)
    else
      render :edit
    end
  end

  def mark_complete
    id = params[:id]
    @task = Task.all.find { |task| task.id == id.to_i }
    @task.status = "complete"
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to tasks_path
  end

  private

  # def

  def task_params
    return params.require(:task).permit(:name, :status, :description, :due)
  end
end
