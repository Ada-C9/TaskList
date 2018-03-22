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
    @task = Task.new
    @task.name = params[:task][:name]
    @task.status = params[:task][:status]
    @task.description = params[:task][:description]
    @task.due = params[:task][:due]
    if @task.save
      redirect_to task_path
    end
  end

  def edit
  end

  def update
  end

  def mark_complete
    id = params[:id]
    @task = Task.all.find { |task| task.id == id.to_i }
    @task.status = "complete"
  end

  def destroy
    id = params[:id]
    @task = Task.all.find { |task| task.id == id.to_i }
    @task.destroy
  end
end
