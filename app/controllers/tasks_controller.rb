class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(name: params[:name], description: params[:description])
    if task.save
      redirect_to "/tasks"
    end
  end

  def show
    task_id = params[:id]
    @task = Task.find(task_id)
  end

  def edit
    @task = Task.find(params[:id])
  end


  def update
    form_data = params[:task]

    task = Task.find(params[:id])
    task.name = form_data[:name]
    task.description = form_data[:description]
    task.completion_date = form_data[:completion_date]

    if task.save
      redirect_to task
    end
  end

end
