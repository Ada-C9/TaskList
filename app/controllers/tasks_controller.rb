class TasksController < ApplicationController
  def index
    @tasks = Task.all
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
    # task.task_name = params[:task][:task_name]
    # task.description = params[:task][:description]
    if task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    # task.task_name = params[:task][:task_name]
    # task.description = params[:task][:description]
    if task.update(task_params)
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy
    id = params[:id]
    @task = Task.find(id)
    @task.destroy
    redirect_to tasks_path
  end

  def mark_complete
    @task = Task.find(params[:id])
    @task.completion_date = DateTime.now
    if @task.save
      redirect_to tasks_path
    else
      render :show
    end
  end

  private

  def task_params
    return params.require(:task).permit(:task_name, :description)
  end
end
