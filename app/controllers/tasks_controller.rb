class TasksController < ApplicationController
  def index
    @tasks = Task.all

  end

  def new
    @tasks = Task.new

  end

  def create

    task_info = params[:task]

    task = Task.new

    task.todo = task_info[:todo]
    task.add_description_to_task = task_info[:add_description_to_task]
    task.due_date = task_info[:due_date]

    if task.save
      redirect_to '/tasks'
    end
  end

  def show
    #allows the task I want, to be identified
    task_id = params[:id]


    @tasks = Task.find(task_id)

  end

  def edit
    @tasks = Task.find(params[:id])

  end

  def update

    task = Task.find(params[:id])

    task.assign_attributes(task_params)

    if task.save
      redirect_to task_path(task)
    end
  end

  def destroy
    Task.destroy(params[:id])

    redirect_to tasks_path

  end

  def complete
    task = Task.find(params[:id])

    task.due_date = DateTime.now

    if task.save
      redirect_to tasks_path

    end
  end

  private
  def task_params
    return
    params.require(:task).permit(:todo, :add_description_to_task, :due_date)
  end

end
