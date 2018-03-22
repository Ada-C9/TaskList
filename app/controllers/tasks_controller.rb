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
    @task = Task.new
    @task.title = params[:task][:title]
    @task.duedate = params[:task][:duedate]
    @task.description = params[:task][:description]
    if @task.save
      redirect_to tasks_path
    end

  end

  def edit
    @task = Task.find(params[:id])
  end

  def update

  @task = Task.find(params[:id])
  @task.update(title: params[:title], duedate: params[:duedate], description: params[:description])
  redirect_to task_path(@task)

  end


  def complete
  end

  def destroy
    id = params[:id]
    @task = Task.find(id)
  @task.destroy
      redirect_to tasks_path
    end

end
