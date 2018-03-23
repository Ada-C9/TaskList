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

  def edit
    id = params[:id]
    @task = Task.find(id)
  end

  def create
    @task = Task.new(task_params)
    # task.name = params[:task][:name]
    # task.description = params[:task][:description]
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def update
    @task = Task.find_by(id: params[:id])
    if !@task.nil?
      if @task.update(task_params)
      # if @task.update(name: params[:task][:name], description: params[:task][:description])
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
    if @task.destroy
      redirect_to tasks_path
    else
      render :new
    end
  end

  def mark_complete
    @task = Task.find_by(id: params[:id])
    @task.date_of_completion = Time.now
    @task.save
    redirect_to tasks_path
  end


  private

  def task_params
    params.require(:task).permit(:name, :description, :date_of_completion)
  end

end
