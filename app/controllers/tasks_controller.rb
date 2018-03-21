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
    # task = Task.new
    # task.name = params[:task][:name]
    # task.description = params[:task][:description]
    # task.comp_date = params[:task][:comp_date]
    #
    # if task.save
    #   redirect_to tasks_path
    # else
    #   # render is controller method
    #   # :new refers to the name of the view
    #   render :new
    # end
  end

  def edit
  end

  def update
  end

  def destroy
    id = params[:id]
    @book = Task.find(id)
    @book.destroy
  end
end
