class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.all.find { |task| task.id == id.to_i }
  end

  def new
  end

  def create
    @task = Task.new
    @task.title = params[:task][:title]
    @task.author = params[:task][:author]
    @task.description = params[:task][:description]
    @task.save
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
