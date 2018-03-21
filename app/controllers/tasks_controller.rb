class TasksController < ApplicationController
  def index
    @tasks = Task.all

  end

  def new

  end

  def create
    task = Task.new(todo: params[:todo], add_description_to_task: params[:add_description_to_task], due_date: params[:due_date] )
    if task.save
      redirect_to '/tasks'
    end
  end

  def show
    #allows the task I want to be identified
    task_id = params[:id]


    @tasks = Task.find(task_id)

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
