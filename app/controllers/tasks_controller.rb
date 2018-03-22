class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
  # this method doesn't send response to the browser, it redirects to the tasks view
  # by default, the controller will send you to whatever controller shares the name
    raw_task = params[:task]

    task = Task.new # must create a local instance of a book

    task.name = raw_task[:name]
    task.description = raw_task[:description]
    task.completion_date = raw_task[:completion_date]

    if task.save
      redirect_to '/tasks'
      # redirect_to books_path # is another way of redirecting
    end
  end

  def show
    task_id = params[:id]
    @task = Task.find(task_id)
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

end
