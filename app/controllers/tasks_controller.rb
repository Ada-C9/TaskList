class TasksController < ApplicationController
  def index

    @tasks = Task.all.order(:date, :time)

  end

  def new
    @task = Task.new
  end

  def create
    raw_task = params[:task]

    task = Task.new

    task.to_do = raw_task[:to_do]
    task.date = raw_task[:date]
    task.time = raw_task[:time]
    task.instructions = raw_task[:instructions]

    if task.save
      redirect_to '/tasks'
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
    raw_task = params[:task]

    task = Task.new(params[:id])

    task.assign_attributes(
      to_do: raw_task[:to_do],
      date: raw_task[:date],
      time: raw_task[:time],
      instructions: raw_task[:instructions]
    )

    if task.save
      redirect_to task_path(task)
    end
  end

  def destroy
  end
end
