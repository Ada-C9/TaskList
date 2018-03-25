class TasksController < ApplicationController


  def index
    @task = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
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
    @task = Task.find_by(id: params[:id])

    if !@task.nil?
      if @task.update(task_params)
      redirect_to task_path(@task.id)
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
    if @task.destroy
      redirect_to tasks_path
    end
  end

  def mark_task_complete

  end

private

def task_params
  return params.require(:task).permit(:task_name, :description, :completion_date)
end

end
