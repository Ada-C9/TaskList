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
    task = Task.new
    task.name = params[:task][:name]
    task.description = params[:task][:description]
    task.comp_date = params[:task][:comp_date]

    if task.save
      redirect_to tasks_path
    else
      # render is controller method
      # :new refers to the name of the view
      render :new
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    @task = Task.find_by(id: params[:id])
    if !@task.nil?
      if @task.update(name: params[:task][:name], description: params[:task][:description], comp_date: params[:task][:comp_date])

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
end
