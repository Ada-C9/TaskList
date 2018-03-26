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
    task.name = params[:task][:name].capitalize
    task.description= params[:task][:description]
    task.complete_by = params[:task][:complete_by]
    task.completed = nil
    task.save

    if task.save
      redirect_to tasks_path
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    @task = Task.find_by(id: params[:id])

    if !@task.nil?
      if @task.update(name: params[:task][:name], description: params[:task][:description], complete_by: params[:task][:complete_by])

        redirect_to task_path(@task.id)

      else
        render :edit
      end
    else
      redirect_to tasks_path
    end
  end

  def completed
    @task = Task.find_by(id: params[:id])

    if !@task.nil?
      @task.completed = Date.today
      @task.save

      redirect_to task_path

    else
      redirect_to task_path

    end

  end

  def destroy
    id = params[:id]
    @task = Task.find(id)
    @task.destroy

  redirect_to tasks_path
  end
end
