require 'date'

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(params[:id])

    if task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def show
    task_id = params[:id]
    # @task = Task.find(task_id)
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    # task = Task.find(params[:id])
    # task.assign_attributes(task_params)
    @task = Task.new
    @task.update({
      name: params[:task][:name],
      description: params[:task][:description],
      completion_date: params[:task][:completion_date]
      })

    if task.save
      redirect_to task_path(task.id)
    else
      render :edit
    end
  end

  # def complete
  #   @task = Task.find_by(id: params[:id])
  #
  #   @task.completion_date = Date.today.to_s
  #   redirect_to tasks_path
  # end


  # def destroy
    # @task = Task.find_by(id: params[:id])
    # if @task.destroy
    #   redirect_to tasks_path
    # else
    #   render :destroy
    # end
  # end

  # private
  # def task_params
  #   return params.require(:task).permit(:name, :description, :completion_date)
  # end

end
