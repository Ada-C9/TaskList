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
    # task.name = params[:task][:name]
    # task.completion_date = params[:task][:completion_date]
    # task.description = params[:task][:description]
    if task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find_by(id:params[:id])
  end

  def update
    task = Task.find_by(id:params[:id])
    if !task.nil?
      # task.name = params[:task][:name]
      # task.completion_date = params[:task][:completion_date]
      # task.description = params[:task][:description]
      if task.update(task_params)
        redirect_to task_path(task.id)
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
    if @task
      @task.destroy
    end
    redirect_to tasks_path
  end

def mark_complete
  @task = Task.find_by(id:params[:id])
  @task.mark_complete = Time.now
  @task.save
  redirect_to tasks_path
end


private
  def task_params
    params.require(:task).permit(:name, :completion_date, :description)
  end

end
