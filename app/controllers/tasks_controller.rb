class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    # Switched to Rails form_for and created params structure
    task_data = params[:task]

    task = Task.new
    task.name = task_data[:name]
    task.description = task_data[:description]
    task.complete_by = task_data[:complete_by]

    if task.save
      redirect_to tasks_path
    end
  end

  def show
    # Figure out which book the user wanted
    task_id = params[:id]


    # Load it from the DB
    # Save it in an instance variable for the view
    @task = Task.find(task_id)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task_data = params[:task]

    task = Task.find(params[:id])

    task.update_attributes(
      name: task_data[:name],
      description: task_data[:description],
      complete_by: task_data[:complete_by]
    )

    if task.save
      redirect_to task_path(tasks)
    end
  end

  def destroy
  end

end
