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
    id = params[:id]
    @task = Task.find(id)
    if @task
      @task.destroy
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :completion_date)
  end



end
