class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    task_id = params[:id]

    @task = Task.find(task_id)
  end

  def new
    @task = Task.new
  end

  def create
   raw_task = params[:task]

   task = Task.new
   task.name = raw_task[:name]
   task.time_of_day = raw_task[:time_of_day]
   task.completed = raw_task[:completed]

   if task.save
     redirect_to '/tasks'
   end
 end
end
