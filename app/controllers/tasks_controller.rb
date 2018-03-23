class TasksController < ApplicationController

  def index
    @tasks = Task.all.order(:id)
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    if task.save # this saves the new book AND evaluates the conditional
      redirect_to tasks_path
    else
      render :new # this symbol is just referring to the name of the view. Not going to trigger new cycle, will just bring up that view.
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    task = Task.find_by(id: params[:id])
    if !task.nil?
      if task.update(task_params)
        redirect_to task_path(task.id)
      else
        render :edit
      end
    else
      redirect_to tasks_path
    end
  end

  def toggle_complete
    task = Task.find(params[:id])
    if task.completed?
      task.update(completion_date: nil, completed?: false)
    else
      task.update(completion_date: Date.new, completed?: true)
    end
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

private

  def task_params
    params.require(:task).permit(:name, :description, :priority)
  end

end
