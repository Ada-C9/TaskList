class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new; end

  def create
    new_task = Task.new(name: params[:name], description: params[:description], completion_date: params[:completion_date])

    if new_task.save
      redirect_to tasks_path
    end

  end

  def show
    task_id = params[:id]
    @task = Task.find(task_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
