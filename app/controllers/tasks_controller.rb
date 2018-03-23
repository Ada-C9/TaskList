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
    @task = Task.new(name: params[:task][:name], description: params[:task][:description], completion_date: params[:task][:completion_date])
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    edit
    if !@task.nil?
      if @task.update(name: params[:task][:name], description: params[:task][:description], completion_date: params[:task][:completion_date])
        redirect_to tasks_path(@task.id)
      else
        render :edit
      end
    else
      redirect_to tasks_path
    end

  end

  def destroy
    id = params[:id]
    if @task = Task.find(id)
      @task.destroy
    end
    redirect_to tasks_path
  end
end
