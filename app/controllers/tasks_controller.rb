class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(name: params[:name], description: params[:description], completion_date: params[:completion_date])
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

  def complete
    @task = Task.find(params[:id])
    @task.completion_date = Date.today
    @task.save

    if @task.save
      redirect_to tasks_path
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    if @task.destroy
      redirect_to tasks_path
    end
  end

end
