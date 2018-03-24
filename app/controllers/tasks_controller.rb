class TasksController < ApplicationController

  def index
    @tasks = Task.order(:id)
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
    task.comp_date = ""
    task.task_complete = false
    if task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def complete
    task = Task.find_by(id: params[:id])
    if task.task_complete == false
      t = Time.now
      task.comp_date = t.strftime("%m/%d/%Y")
      task.task_complete = true
    # else
    #   task.task_complete = false
    end
    task.save
    redirect_to tasks_path
  end

  def update
    @task = Task.find_by(id: params[:id])
    if !@task.nil?
      if @task.update(task_params)
        redirect_to task_path
      else
        render :edit
      end
    else
      redirect_to tasks_path
    end
  end

  def destroy
    id = params[:id]
    @task = Task.find(id)
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :comp_date, :task_complete)
  end
end
