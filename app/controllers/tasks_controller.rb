class TasksController < ApplicationController
  TASKS_LIST = [
    {id:1,title:"Cleaning",description:"incomplete"},
    {id:2,title:"Washing",description:"complete"},
    {id:3,title:"Cooking",description:"complete"}]
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

    task= Task.new
    task.title=params[:task][:title]
    task.description= params[:task][:description]
    task.completion_date=params[:task][:completion_date]
    if task.save
      redirect_to tasks_path
    else
      render:new
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    edit
    @task.title=params[:task][:title]
    @task.description= params[:task][:description]
    @task.completion_date=params[:task][:completion_date]
    if @task.save
      redirect_to tasks_path
    else
      render:edit
    end
  end

  def destroy
    id = params[:id]
      @task = Task.find(id)
      if@task
        @task.destroy
      end
      redirect_to tasks_path
  end
end
