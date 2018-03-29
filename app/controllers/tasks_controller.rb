class TasksController < ApplicationController
  def index

    @tasks = Task.all.order(:date, :time)

  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)

    if task.save
      redirect_to tasks_path
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
    # raw_task = params[:task]

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
    task.completion_date = DateTime.now.strftime("%a, %B %d, %Y")

    if task.status == "complete"
      task.assign_attributes(status: "not complete", completion_date: nil)
    else
      task.assign_attributes(status: "complete")
    end

    if task.save
      redirect_to tasks_path
    end
  end

  private
  def task_params
    return params.require(:task).permit(:to_do, :date, :time, :instructions, :status, :completion_date)
  end
end
