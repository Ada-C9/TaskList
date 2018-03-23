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
    task = Task.new(task_params)
    task.save ? (redirect_to tasks_path) : (render :new)
  end

  def edit
    Task.find_by(id: params[:id]) ? (@task = Task.find_by(id: params[:id])) : (redirect_to tasks_path)
  end
  # TODO: change the style of the edit page because its showing the form under the footer line inseatd of above it
  def update
    task = Task.find_by(id: params[:id])
    if !task.nil?
      task.update(task_params) ? (redirect_to task_path) : (render :edit)
    end
  end

  def destroy
    id = params[:id]
    @task = Task.find(id)
    @task ? @task.destroy : (redirect_to tasks_path)

    #  TODO: Update the database with the task's completed date
  end

  def complete
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end

end
